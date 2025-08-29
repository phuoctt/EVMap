// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'dart:io';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/map_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/station_state.dart';
import 'package:rabbitevc/features/charge_station/screens/detail_charge_station_screen.dart';
import 'package:rabbitevc/features/dashboard/screens/search_station_screen.dart';
import 'package:rabbitevc/features/dashboard/views/popup_filter.dart';
import 'package:rabbitevc/features/dashboard/widgets/map_bottom_info.dart';
import 'package:rabbitevc/features/dashboard/widgets/marker_icon.dart';
import 'package:rabbitevc/features/dashboard/widgets/marker_my_location.dart';
import 'package:rabbitevc/features/dashboard/widgets/tile_providers.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/models/charge_station/charge_type_model.dart';
import 'package:rabbitevc/models/charging_station/station_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/event_bus/event_bus_manager.dart';
import 'package:rabbitevc/share/enums/station_status_type.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

import 'map_polygon_layer.dart';

const apiKey = 'qnAIH1NWu9uLyXRUgMpi5JUuVNMFypMjh31pw40z';

class MapUiBody extends StatefulWidget {
  static const route = '/mapUiBody';

  const MapUiBody({super.key});

  @override
  State<StatefulWidget> createState() => MapUiBodyState();
}

class MapUiBodyState extends State<MapUiBody>
    with AutomaticKeepAliveClientMixin {
  List<ChargeStationModel> data = List.from([]);

  ChargeStationCubit get _stationCubit => BlocProvider.of(context);

  MapCubit get _mapCubit => BlocProvider.of(context);

  final ValueNotifier<Station> _itemNotifier = ValueNotifier(Station());

  ValueNotifier<FilterSearchModel> filterModel = ValueNotifier(
      FilterSearchModel(
          status: StationStatusType.all,
          chargeTypeModel: ChargeTypeModel(name: S.text?.text_all)));
  List<Station> stations = [];

  Station? stationSelected;
  final mapController = MapController();
  final List<Marker> _markers = [];
  final random = Random();
  Marker? markerMyLocation;

  @override
  void initState() {
    _requestPermission();
    EventBusManager.eventBus.on().listen((e) {
      if (e == EventType.findChargeStation) {
        _onSelectItemSearch();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) async {});
    super.initState();
  }

  Future<void> _requestPermission() async {
    await Permission.location.request();
  }

  @override
  void dispose() {
    _itemNotifier.dispose();
    filterModel.dispose();
    super.dispose();
  }

  void _addMarker(List<Station> stations) {
    _markers.clear();
    for (final e in stations) {
      final lat = e.lat;
      final lng = e.long;
      final latLng = LatLng(lat, lng);
      final isSelected = stationSelected?.id == e.id;
      _markers.add(
        Marker(
          point: latLng,
          width: isSelected ? 42 : 36,
          height: isSelected ? 42 : 35,
          child: InkWell(
            onTap: () {
              setState(() {
                _itemNotifier.value = e;
                stationSelected = e;
                _addMarker(stations);
              });
              // mapController.move(latLng, 16);
            },
            // child: AppImage.asset(IcPng.icCustomMarker, height: 30),
            child: MarkerIcon(isSelected: isSelected),
          ),
        ),
      );
    }
  }

  // center location

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<StationCubit, StationState>(
            builder: (context, state) {
              if (state is StationLogged) {
                stations = List.from(state.data);
                _addMarker(stations);
              }
              return FlutterMap(
                mapController: mapController,
                options: const MapOptions(
                  initialCenter: LatLng(10.799136, 106.719461),
                  initialZoom: 12,
                  interactionOptions: InteractionOptions(
                    flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
                  ),
                ),
                children: [
                  openStreetMapTileLayer,
                  const MapPolygonLayer(),
                  MarkerLayer(markers: [
                    Marker(
                      point:
                          const LatLng(16.818714181934283, 112.33720953819945),
                      width: 100,
                      height: 100,
                      child: AppImage.asset(IcPng.hoangsa, height: 150),
                    ),
                    Marker(
                      point: const LatLng(9.10486246002327, 112.35971946132798),
                      width: 100,
                      height: 100,
                      child: AppImage.asset(IcPng.truongsa, height: 150),
                    )
                  ]),
                  if (markerMyLocation != null)
                    MarkerLayer(markers: [markerMyLocation!]),
                  if (_markers.isNotEmpty)
                    MarkerClusterLayerWidget(
                      key: ValueKey(stationSelected?.id ?? 'none'),
                      options: MarkerClusterLayerOptions(
                        maxClusterRadius: 45,
                        disableClusteringAtZoom: 16,
                        size: const Size(60, 60),
                        markers: _markers,
                        builder: (context, markers) {
                          return Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: PrimaryColor.primary900.withOpacity(0.5),
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: PrimaryColor.primary900,
                              ),
                              child: Center(
                                child: Text(
                                  markers.length.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                  // MarkerLayer(markers: _markers),
                ],
              );
            },
          ),
          Positioned(
            top: 16,
            left: 0,
            right: 0,
            child: _buildHeaderSearch(),
          ),
          // ValueListenableBuilder<Station>(
          //   valueListenable: _itemNotifier,
          //   builder: (context, value, _) {
          //     return Positioned(
          //       left: 0,
          //       right: 0,
          //       bottom: 24,
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.end,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.all(16.0),
          //             child: FloatingActionButton(
          //               onPressed: () async {
          //                 final myLocation = await AppUtils.getMyLocation();
          //                 if (myLocation == null) return;
          //                 setState(() {
          //                   final latLng = LatLng(
          //                       myLocation.latitude, myLocation.longitude);
          //                   markerMyLocation = Marker(
          //                     point: latLng,
          //                     height: 40,
          //                     width: 40,
          //                     child: MarkerMyLocation(),
          //                   );
          //                   mapController.move(latLng, 17);
          //                 });
          //               },
          //               tooltip: 'My Location',
          //               backgroundColor: PrimaryColor.primary900,
          //               child: const Icon(Icons.my_location),
          //             ),
          //           ),
          //           value.id != null
          //               ? _buildItemStation(value)
          //               : const SizedBox.shrink(),
          //         ],
          //       ),
          //     );
          //   },
          // ),
          // DraggableScrollableSheet
          ValueListenableBuilder<Station>(
            valueListenable: _itemNotifier,
            builder: (context, value, _) {
              return value.id != null
                  ? DraggableScrollableSheet(
                      initialChildSize: 0.3,
                      minChildSize: 0.18,
                      maxChildSize: 0.7,
                      builder: (BuildContext context,
                          ScrollController scrollController) {
                        return ValueListenableBuilder<Station>(
                          valueListenable: _itemNotifier,
                          builder: (context, value, _) {
                            return MapBottomInfo(
                              value: value,
                              scrollController: scrollController,
                            );
                          },
                        );
                      },
                    )
                  : const SizedBox.shrink();
            },
          )
        ],
      ),
      // bottomSheet: ValueListenableBuilder<Station>(
      //   valueListenable: _itemNotifier,
      //   builder: (context, value, _) {
      //     return MapBottomInfo(
      //       value: value,
      //     );
      //   },
      // ),
    );
  }

  void _openDetailChargeStation(Station val) async {
    final result = await pushNamed(DetailCharStationScreen.route,
        arguments: {'data': val});
  }

  Widget _buildHeaderSearch() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GestureDetector(
          onTap: _onSelectItemSearch,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 48,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        S.text?.station_search_hint_text ?? '',
                        style: const TextStyle(
                            fontFamily: AppFonts.beVietnamPro,
                            fontSize: 14,
                            color: GreyColor.grey600,
                            fontWeight: FontWeight.w300,
                            height: 20 / 14),
                      )),
                      AppImage.asset(IcSvg.icSearch)
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ValueListenableBuilder<FilterSearchModel>(
                valueListenable: filterModel,
                builder: (context, value, _) {
                  final activeFilter = value.status != StationStatusType.all ||
                      value.chargeTypeModel?.id != null;
                  return Stack(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: AppImage.asset(IcSvg.icFilter,
                            color: GreyColor.grey600),
                      ),
                      if (activeFilter == true)
                        Positioned(
                            top: 10,
                            right: 6,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.semanticColor),
                            ))
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onSelectItemSearch() async {
    final result = await pushNamed(SearchStationScreen.route,
        arguments: {'data': data, 'filterModel': filterModel});
    // final model = stations.firstWhereOrNull((e) => e.id == 163);
    // if (model != null) {
    //   mapController.move(LatLng(model.lat, model.long), 17);
    //   _itemNotifier.value = model;
    // }
    if (result != null && result is ChargeStationModel) {
      final item = data.firstWhereOrNull((element) => element.id == result.id);
      if (item != null) {}
    }
  }

  void _onLoadItemMap(Station item) {
    _itemNotifier.value = item;
    // _mapCubit.onLoadDirection(item.location_latitude?.toDouble(),
    //     item.location_longitude?.toDouble());
  }

  Widget _buildItemStation(Station data) {
    return GestureDetector(
      onTap: () => _openDetailChargeStation(data),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 27),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppImage.asset(
                    IcPng.imageChargeStation,
                    height: 88,
                    width: 88,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SeparatedColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.name ?? '',
                          maxLines: 1,
                          style: AppTextStyle.bodyMedium
                              .copyWith(color: GreyColor.grey800),
                        ),
                        Text(
                          data.address ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.smallTextRegular
                              .copyWith(color: GreyColor.grey600),
                        ),
                        _buildContent(
                          iconPath: IcSvg.icHomeLocation,
                          widgetContent: FutureBuilder<double>(
                            future: _distance(data.lat, data.long),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Text('');
                              } else if (snapshot.hasError) {
                                return const Text('');
                              } else {
                                final distanceValue = snapshot.data!;
                                if (distanceValue > 0) {
                                  return Text(
                                    '${_distanceString(distanceValue)} / ${_getDuration(distanceValue)}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        height: 20 / 14,
                                        color: Colors.amber),
                                  );
                                }
                                return const Text('');
                              }
                            },
                          ),
                        ),

                        // _buildContent(
                        //     iconPath: IcSvg.icHomeLocation,
                        //       widgetContent:
                        //     text: '${distance(data.lat,data.long)} / ${_getDuration(100)}',
                        //   ),
                        _buildContent(
                          iconPath: IcSvg.icHomeLocation,
                          text:
                              '${data.countAvailable}/${data.chargeBoxes?.length ?? 0} trụ khả dụng',
                        )
                      ],
                      separatorBuilder: () => const SizedBox(height: 6),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              AppButton(
                width: double.infinity,
                onPressed: () async {
                  final lat = _itemNotifier.value.lat;
                  final lng = _itemNotifier.value.long;
                  _launchMapsUrl(lat, lng, _itemNotifier.value.address);
                },
                title: 'Chỉ đường',
              ),
              const SizedBox(height: 6),
            ],
          ),
        ),
      ),
    );
  }

  void _launchMapsUrl(double? lat, double? lng, String? title) async {
    await MapLauncher.showMarker(
      mapType: Platform.isIOS ? MapType.apple : MapType.google,
      coords: Coords(lat ?? 0, lng ?? 0),
      title: title ?? '',
      description: '',
    );
  }

  String _getDuration(distance) {
    final durationSecond = ((distance / 1000) / 40) * 3600;
    return _printDuration(Duration(seconds: durationSecond.toInt()));
  }

  String _printDuration(Duration duration) {
    String negativeSign = duration.isNegative ? '-' : '';
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60).abs());
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60).abs());
    return "$negativeSign${twoDigits(duration.inHours) == '00' ? '' : '${twoDigits(duration.inHours)} giờ '}${twoDigitMinutes == '00' ? '' : '${twoDigitMinutes} phút'}";
  }

  double distanceInMeters(
    double startLatitude,
    double startLongitude,
    double endLatitude,
    double endLongitude,
  ) {
    return Geolocator.distanceBetween(
      startLatitude,
      startLongitude,
      endLatitude,
      endLongitude,
    );
  }

  Future<double> _distance(double? lat, double? lng) async {
    Position? myLocation = await AppUtils.getMyLocation();
    if (myLocation == null || lat == null || lng == null) return 0;

    double distance = Geolocator.distanceBetween(
      myLocation.latitude,
      myLocation.longitude,
      lat,
      lng,
    );
    return distance;
  }

  String _distanceString(double distance) {
    if (distance >= 1000) {
      return '${(distance / 1000).toStringAsFixed(2)} km';
    } else if (distance >= 100) {
      return '${distance.toStringAsFixed(0)} m';
    } else {
      return '${distance.toStringAsFixed(1)} m';
    }
  }

  Widget _buildContent(
      {String? iconPath, String? text, Widget? widgetContent}) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath ?? '',
          width: 16,
        ),
        const SizedBox(width: 4),
        widgetContent ??
            Text(
              text ?? '',
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 20 / 14,
                  color: Color(0xffFFC218)),
            ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'dart:io';
import 'dart:math';

// import 'package:url_launcher/url_launcher.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import 'package:map_launcher/map_launcher.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/cubit/map_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/station_state.dart';
import 'package:rabbitevc/features/charge_station/cubit/station_state.dart';
import 'package:rabbitevc/features/charge_station/screens/detail_charge_station_screen.dart';
import 'package:rabbitevc/features/dashboard/screens/search_station_screen.dart';
import 'package:rabbitevc/features/dashboard/views/popup_filter.dart';
import 'package:rabbitevc/features/dashboard/widgets/raster_map_page.dart';
import 'package:rabbitevc/features/dashboard/widgets/tile_providers.dart';
import 'package:rabbitevc/features/home/widgets/text_station_available.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/models/charge_station/charge_type_model.dart';
import 'package:rabbitevc/models/charge_station/direction_model.dart';
import 'package:rabbitevc/models/charging_station/station_model.dart';
import 'package:rabbitevc/models/charging_station/station_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/event_bus/event_bus_manager.dart';
import 'package:rabbitevc/share/enums/station_status_type.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/utils/tile_servers.dart';
import 'package:rabbitevc/utils/utils.dart';
import 'package:rabbitevc/utils/viewport_painter.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';
import 'package:flutter_map/flutter_map.dart';

const apiKey = 'qnAIH1NWu9uLyXRUgMpi5JUuVNMFypMjh31pw40z';

class MapUiBody extends StatefulWidget {
  static const route = '/mapUiBody';

  const MapUiBody({super.key});

  @override
  State<StatefulWidget> createState() => MapUiBodyState();
}

class MapUiBodyState extends State<MapUiBody>
    with AutomaticKeepAliveClientMixin {
  // CameraPosition _kInitialPosition = const CameraPosition(
  //   target: LatLng(10.7786117, 106.671677),
  //   zoom: 11.0,
  // );

  // late MaplibreMapController mapController;
  List<ChargeStationModel> data = List.from([]);

  void _onMapChanged() {}

  ChargeStationCubit get _stationCubit => BlocProvider.of(context);

  MapCubit get _mapCubit => BlocProvider.of(context);

  final ValueNotifier<Station> _itemNotifier = ValueNotifier(Station());

  // ValueNotifier<String> _textNotifier = ValueNotifier('');
  ValueNotifier<FilterSearchModel> filterModel = ValueNotifier(
      FilterSearchModel(
          status: StationStatusType.all,
          chargeTypeModel: ChargeTypeModel(name: S.text?.text_all)));
  List<Station> stations = [];

  bool _darkMode = false;
  Station? stationSelected;
  final mapController = MapController();
  final List<Marker> _markers = [];
  final random = Random();

  @override
  void initState() {
    _requestPermission();
    EventBusManager.eventBus.on().listen((e) {
      if (e == EventType.findChargeStation) {
        _onSelectItemSearch();
      }
    });

    super.initState();
  }

  Future<void> _requestPermission() async {
    await Permission.location.request();
  }

  @override
  void dispose() {
    // mapController.removeListener(_onMapChanged);
    // mapController.onSymbolTapped.remove(_onSymbolTapped);
    _itemNotifier.dispose();
    filterModel.dispose();
    super.dispose();
  }

  void _addMarker(List<Station> stations) {
    _markers.clear();
    for (final e in stations) {
      final lat = e.lat;
      final lng = e.long;
      _markers.add(
        Marker(
          point: LatLng(lat, lng),
          width: 40,
          height: 40,
          child: const Icon(
            Icons.location_on,
            color: Colors.red,
            size: 30,
          ),
        ),
      );
    }


  }

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
                // _itemNotifier.value = state.data.first;
              }
              return FlutterMap(
                mapController: mapController,
                options: const MapOptions(
                  initialCenter: LatLng(10.799136, 106.719461),
                  initialZoom: 12,
                ),
                children: [
                  openStreetMapTileLayer,
                  MarkerLayer(markers: _markers),
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
          ValueListenableBuilder<Station>(
            valueListenable: _itemNotifier,
            builder: (context, value, _) {
              return Positioned(
                left: 0,
                right: 0,
                bottom: 24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: FloatingActionButton(
                        onPressed: () {},
                        tooltip: 'My Location',
                        backgroundColor: PrimaryColor.primary900,
                        child: const Icon(Icons.my_location),
                      ),
                    ),
                    value.id != null
                        ? _buildItemStation(value)
                        : const SizedBox.shrink(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
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
                    color: GreyColor.grey800,
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
                          color: GreyColor.grey800,
                        ),
                        child: AppImage.asset(IcSvg.icFilter),
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
    if (result != null && result is ChargeStationModel) {
      final item = data.firstWhereOrNull((element) => element.id == result.id);
      if (item != null) {
        // _onLoadItemMap(item);

        // _textNotifier.value = _itemNotifier.value.name ?? '';
        // mapController.animateCamera(
        //   CameraUpdate.newLatLngZoom(
        //       LatLng(_itemNotifier.value.location_latitude?.toDouble() ?? 0,
        //           _itemNotifier.value.location_longitude?.toDouble() ?? 0),
        //       13),
        //   duration: const Duration(milliseconds: 300),
        // );
      }
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
            borderRadius: BorderRadius.circular(8), color: GreyColor.grey800),
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
                              .copyWith(color: Colors.white),
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
                                        color: Color(0xffFFC218)),
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
    final durationSecond = ((distance / 1000) / 60) * 3600;
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

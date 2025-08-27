import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/charge_station/cubit/station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/station_state.dart';
import 'package:rabbitevc/models/charging_station/station_model.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/utils/utils.dart';
import 'package:rabbitevc/utils/tile_servers.dart';
import 'package:rabbitevc/utils/viewport_painter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';

class RasterMapPage extends StatefulWidget {
  final List<Station> data;
  final ValueChanged<Station>? onChanged;

  const RasterMapPage({
    Key? key,
    required this.data,
    this.onChanged,
  }) : super(key: key);

  @override
  RasterMapPageState createState() => RasterMapPageState();
}

class RasterMapPageState extends State<RasterMapPage> {
  // final controller = MapController(
  //   location: const LatLng(Angle.degree(35.68), Angle.degree(51.41)),
  //   zoom: 6,
  // );
  final controller = MapController(
    location: const LatLng(
      Angle.degree(10.7769),
      Angle.degree(106.7009),
    ),
    zoom: 12,
  );

  bool _darkMode = false;

  // List<LatLng> markers = [];

  void _gotoDefault() async {
    final myLocation = await AppUtils.getMyLocation();
    if (myLocation?.latitude == null && myLocation?.longitude == null) return;
    // controller.center = LatLng(
    //     Angle.degree(myLocation!.latitude), Angle.degree(myLocation.longitude));
    controller.center = LatLng(
      Angle.degree(10.7769),
      Angle.degree(106.7009),
    );
    controller.zoom = 14;
    setState(() {});
  }

  void _onDoubleTap(MapTransformer transformer, Offset position) {
    const delta = 0.5;
    final zoom = clamp(controller.zoom + delta, 2, 18);

    transformer.setZoomInPlace(zoom, position);
    setState(() {});
  }

  Offset? _dragStart;
  double _scaleStart = 1.0;

  void _onScaleStart(ScaleStartDetails details) {
    _dragStart = details.focalPoint;
    _scaleStart = 1.0;
  }

  void _onScaleUpdate(ScaleUpdateDetails details, MapTransformer transformer) {
    final scaleDiff = details.scale - _scaleStart;
    _scaleStart = details.scale;

    if (scaleDiff > 0) {
      controller.zoom += 0.02;

      setState(() {});
    } else if (scaleDiff < 0) {
      controller.zoom -= 0.02;
      if (controller.zoom < 1) {
        controller.zoom = 1;
      }
      setState(() {});
    } else {
      final now = details.focalPoint;
      var diff = now - _dragStart!;
      _dragStart = now;
      final h = transformer.constraints.maxHeight;

      final vp = transformer.getViewport();
      if (diff.dy < 0 && vp.bottom - diff.dy < h) {
        diff = Offset(diff.dx, 0);
      }

      if (diff.dy > 0 && vp.top - diff.dy > 0) {
        diff = Offset(diff.dx, 0);
      }

      transformer.drag(diff.dx, diff.dy);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Basic Map'),
      //   actions: [
      //     IconButton(
      //       tooltip: 'Toggle Dark Mode',
      //       onPressed: () {
      //         setState(() {
      //           _darkMode = !_darkMode;
      //         });
      //       },
      //       icon: const Icon(Icons.wb_sunny),
      //     ),
      //   ],
      // ),
      body: MapLayout(
        controller: controller,
        builder: (context, transformer) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onDoubleTapDown: (details) => _onDoubleTap(
              transformer,
              details.localPosition,
            ),
            onScaleStart: _onScaleStart,
            onScaleUpdate: (details) => _onScaleUpdate(details, transformer),
            child: Listener(
              behavior: HitTestBehavior.opaque,
              onPointerSignal: (event) {
                if (event is PointerScrollEvent) {
                  final delta = event.scrollDelta.dy / -1000.0;
                  final zoom = clamp(controller.zoom + delta, 2, 18);

                  transformer.setZoomInPlace(zoom, event.localPosition);
                  setState(() {});
                }
              },
              child: Stack(
                children: [
                  TileLayer(
                    builder: (context, x, y, z) {
                      final tilesInZoom = pow(2.0, z).floor();

                      while (x < 0) {
                        x += tilesInZoom;
                      }
                      while (y < 0) {
                        y += tilesInZoom;
                      }

                      x %= tilesInZoom;
                      y %= tilesInZoom;

                      return CachedNetworkImage(
                        imageUrl:
                            _darkMode ? googleDark(z, x, y) : google(z, x, y),
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  // Marker
                  ...widget.data.map((e) {
                    final markerOffset = transformer.toOffset(
                        LatLng(Angle.degree(e.lat), Angle.degree(e.long)));
                    return Positioned(
                      left: markerOffset.dx - 12,
                      top: markerOffset.dy - 24,
                      child: InkWell(
                        onTap: () => widget.onChanged?.call(e),
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 32,
                        ),
                      ),
                    );
                  }).toList(),

                  CustomPaint(
                    painter: ViewportPainter(
                      transformer.getViewport(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _gotoDefault,
        tooltip: 'My Location',
        backgroundColor: PrimaryColor.primary900,
        child: const Icon(Icons.my_location),
      ),
    );
  }
}

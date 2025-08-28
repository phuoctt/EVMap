import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPolygonLayer extends StatelessWidget {
  const MapPolygonLayer({super.key});

  @override
  Widget build(BuildContext context) {
    const LatLng centerHoangSa = LatLng(16.818714181934283, 112.93720953819945);
    const LatLng centerTruongSa = LatLng(9.35486246002327, 113.35971946132798);

    final circlePoints = createCircle(centerHoangSa, 250000, segments: 128);
    final circlePoints2 = createCircle(centerTruongSa, 370000, segments: 128);

    final colorSea = const Color(0xffaad3df);
    return PolygonLayer(
      polygons: [
        Polygon(
          points: circlePoints,
          color: colorSea,
          borderColor: colorSea,
        ),
        Polygon(
          points: circlePoints2,
          color: colorSea,
          borderColor:colorSea,
        ),
      ],
    );
  }

  List<LatLng> createCircle(LatLng center, double radiusMeters,
      {int segments = 64}) {
    final List<LatLng> pts = [];
    // 1 độ latitude ≈ 111320 meters
    final double latRad = center.latitude * pi / 180.0;
    const double metersPerDegLat = 111320.0;
    final double metersPerDegLon = (111320.0 * cos(latRad)).abs();

    for (int i = 0; i < segments; i++) {
      final double theta = (i / segments) * 2 * pi;
      final double dLat = (radiusMeters * sin(theta)) / metersPerDegLat;
      final double dLon = (radiusMeters * cos(theta)) / metersPerDegLon;
      pts.add(LatLng(center.latitude + dLat, center.longitude + dLon));
    }
    return pts;
  }
}

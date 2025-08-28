import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:http/http.dart';
import 'package:http/retry.dart';

final httpClient = RetryClient(Client());

// TODO: This causes unneccessary rebuilding
TileLayer get openStreetMapTileLayer => TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
      tileProvider: NetworkTileProvider(httpClient: httpClient),
    );

TileLayer get darkTileLayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  tileBuilder: _darkModeTileBuilder,
);
Widget _darkModeTileBuilder(
    BuildContext context,
    Widget tileWidget,
    TileImage tile,
    ) {
  return ColorFiltered(
    colorFilter: const ColorFilter.matrix(<double>[
      -0.2126, -0.7152, -0.0722, 0, 255, // Red channel
      -0.2126, -0.7152, -0.0722, 0, 255, // Green channel
      -0.2126, -0.7152, -0.0722, 0, 255, // Blue channel
      0,       0,       0,       1, 0,   // Alpha channel
    ]),
    child: tileWidget,
  );
}
// import 'package:flutter/material.dart';
// import 'package:maplibre_gl/maplibre_gl.dart';
//
// class BoxMap extends StatefulWidget {
//   const BoxMap({super.key});
//
//   @override
//   State<BoxMap> createState() => _BoxMapState();
// }
//
// class _BoxMapState extends State<BoxMap> with AutomaticKeepAliveClientMixin{
//   static const CameraPosition _kInitialPosition = CameraPosition(
//     target: LatLng(10.7786117, 106.671677),
//     zoom: 11.0,
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      body: Stack(
//        children: [
//          MaplibreMap(
//            initialCameraPosition: _kInitialPosition,
//            onMapClick: (point, latLng) {
//              // if (searchController.isOpen ||
//              //     isSearchFocus.value) {
//              //   return;
//              // }
//              // pickedLocation.value = latLng;
//            },
//            styleString:
//            "https://api.ekgis.vn/v2/mapstyles/style/bdm/basic/style.json?api_key=qnAIH1NWu9uLyXRUgMpi5JUuVNMFypMjh31pw40z",
//            // // styleString: LocationState.utility.styleUrl,
//            // compassEnabled: false,
//            onMapCreated: (controller) {
//              // pickedLocation.value = state.pos;
//              // controller.moveCamera(
//              //     CameraUpdate.newLatLngZoom(state.pos, 13));
//              // mapController.value = controller;
//            },
//            onStyleLoadedCallback: () async {
//              // await mapController.value!
//              //     .addImage('my_marker_img', dataByte.data!);
//              // mapSymbolManager.value =
//              //     mapController.value?.symbolManager;
//            },
//          ),
//        ],
//      ),
//     );
//   }
//
//   @override
//   bool get wantKeepAlive =>true;
// }

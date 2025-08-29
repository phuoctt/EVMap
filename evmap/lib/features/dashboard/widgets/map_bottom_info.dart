import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:rabbitevc/models/charging_station/station_model.dart';
import 'package:rabbitevc/share/extensions/list.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class MapBottomInfo extends StatelessWidget {
  final ScrollController? scrollController;
  final Station value;

  const MapBottomInfo({super.key, this.scrollController, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 1)],
      ),
      child: Wrap(
       children: [
         SingleChildScrollView(
           controller: scrollController,
           child: Column(
             children: [
               Container(
                 height: 5,
                 width: 80,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), color: Colors.grey),
               ),
               const SizedBox(height: 10),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SeparatedColumn(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(value.name ?? '',
                                 style: AppTextStyle.largeTextSemiBold.copyWith(
                                   fontWeight: FontWeight.w500,
                                   color: GreyColor.grey900,
                                 )),
                             Text(
                               value.address ?? '',
                               style: AppTextStyle.smallTextRegular.copyWith(
                                   color: GreyColor.grey700, fontSize: 15),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 10),
                         child:
                         Container(color: Colors.grey.shade300, height: 0.5),
                       ),
                       Container(
                         width: double.infinity,
                         padding: const EdgeInsets.symmetric(horizontal: 16),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             if (value.services.notNullOrEmpty)
                               Padding(
                                 padding: const EdgeInsets.only(bottom: 6),
                                 child: Wrap(
                                   children: List.generate(value.services!.length,
                                           (index) {
                                         final e = value.services?[index];
                                         return Row(
                                           mainAxisSize: MainAxisSize.min,
                                           children: [
                                             Text(
                                               e?.stationServiceType.displayName ?? '',
                                               style: AppTextStyle.smallTextRegular
                                                   .copyWith(
                                                   color: GreyColor.grey700,
                                                   fontSize: 13),
                                             ),
                                             if (index != (value.services!.length - 1))
                                               Container(
                                                 margin: const EdgeInsets.symmetric(
                                                     horizontal: 4),
                                                 height: 3,
                                                 width: 3,
                                                 decoration: const BoxDecoration(
                                                     shape: BoxShape.circle,
                                                     color: GreyColor.grey600),
                                               )
                                           ],
                                         );
                                       }),
                                 ),
                               ),
                             // Text(
                             //   'Trạng thái',
                             //   style: AppTextStyle.smallTextRegular.copyWith(
                             //       color: GreyColor.grey600, fontSize: 11),
                             // ),
                             // Text('Đang hoạt động',
                             //     style: AppTextStyle.largeTextSemiBold.copyWith(
                             //         fontWeight: FontWeight.w500,
                             //         color: GreyColor.grey900,
                             //         fontSize: 12)),
                             if (value.chargeBoxes.notNullOrEmpty)
                               SeparatedColumn(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   separatorBuilder: ()=>const SizedBox(height: 4),
                                   children: List.generate(
                                       value.chargeBoxes!.length, (index) {
                                     final box = value.chargeBoxes![index];
                                     return Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text(
                                           '${box.name} (${value.countAvailable}/${value.chargeBoxes!.length})',
                                           style: AppTextStyle.smallTextRegular
                                               .copyWith(
                                               fontWeight: FontWeight.w400,
                                               color: box.chargeBoxStatus.statusColor,
                                               fontSize: 12),
                                         ),
                                         // if (box.connectors.notNullOrEmpty)
                                       ],
                                     );
                                   })),
                             // Text(
                             //   'Trụ sạc',
                             //   style: AppTextStyle.smallTextRegular.copyWith(
                             //       color: GreyColor.grey600, fontSize: 11),
                             // ),
                             // Text(' - 2 trụ 120KW',
                             //     style: AppTextStyle.largeTextSemiBold.copyWith(
                             //         fontWeight: FontWeight.w500,
                             //         color: GreyColor.grey900,
                             //         fontSize: 12)),
                             // Text(' - 3 trụ 22KW',
                             //     style: AppTextStyle.largeTextSemiBold.copyWith(
                             //         fontWeight: FontWeight.w500,
                             //         color: GreyColor.grey900,
                             //         fontSize: 12)),
                           ],
                         ),
                       ),
                       FutureBuilder<double>(
                         future: _distance(value.lat, value.long),
                         builder: (context, snapshot) {
                           if (snapshot.connectionState ==
                               ConnectionState.waiting) {
                             return const Text('');
                           } else if (snapshot.hasError) {
                             return const Text('');
                           } else {
                             final distanceValue = snapshot.data!;
                             if (distanceValue > 0) {
                               return Padding(
                                 padding:
                                 const EdgeInsets.symmetric(horizontal: 16),
                                 child: Row(
                                   mainAxisAlignment:
                                   MainAxisAlignment.spaceBetween,
                                   children: [
                                     Column(
                                       crossAxisAlignment:
                                       CrossAxisAlignment.start,
                                       children: [
                                         Text(
                                           _getDuration(distanceValue),
                                           style: const TextStyle(
                                               fontWeight: FontWeight.w500,
                                               fontSize: 16,
                                               height: 20 / 16,
                                               color: Colors.orange),
                                         ),
                                         Text(
                                           _distanceString(distanceValue),
                                           style: const TextStyle(
                                               fontWeight: FontWeight.w400,
                                               fontSize: 14,
                                               color: Colors.black),
                                         ),
                                       ],
                                     ),
                                     InkWell(
                                       onTap: () {
                                         final lat = value.lat;
                                         final lng = value.long;
                                         _launchMapsUrl(lat, lng, value.address);

                                       },
                                       child: Container(
                                         padding: const EdgeInsets.symmetric(
                                             horizontal: 12, vertical: 6),
                                         decoration: BoxDecoration(
                                             borderRadius:
                                             BorderRadius.circular(20),
                                             border: Border.all(
                                                 width: 1,
                                                 color: GreyColor.grey600)),
                                         child: Row(
                                           children: [
                                             Text('Chỉ đường',
                                                 style: AppTextStyle
                                                     .largeTextSemiBold
                                                     .copyWith(
                                                     fontWeight:
                                                     FontWeight.w500,
                                                     color: GreyColor.grey900,
                                                     fontSize: 14)),
                                             const SizedBox(width: 4),
                                             const Icon(
                                               Icons.directions,
                                               color: GreyColor.grey700,
                                               size: 22,
                                             )
                                           ],
                                         ),
                                       ),
                                     )
                                   ],
                                 ),
                               );
                             }
                             return const Text('');
                           }
                         },
                       ),
                     ],
                     separatorBuilder: () => const SizedBox(height: 6),
                   ),
                   const SizedBox(height: 16),
                 ],
               )
             ],
           ),
         )
       ],
      ),
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
}

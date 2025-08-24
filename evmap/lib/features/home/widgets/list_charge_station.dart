import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/screens/detail_charge_station_screen.dart';
import 'package:rabbitevc/features/home/widgets/text_station_available.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/widget/app_image.dart';

class ListChargeStation extends StatefulWidget {
  final List<ChargeStationModel>? data;
  final ValueChanged<List<ChargeStationModel>>? onChanged;

  const ListChargeStation({
    Key? key,
    this.data,
    this.onChanged,
  }) : super(key: key);

  @override
  State<ListChargeStation> createState() => _ListChargeStationState();
}

class _ListChargeStationState extends State<ListChargeStation> {
  late List<ChargeStationModel> _data;

  @override
  void initState() {
    _data = List.from(widget.data ?? []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          final item = _data[index];
          return GestureDetector(
              onTap: () async {
                final result = await pushNamed(DetailCharStationScreen.route,
                    arguments: {'data': _data[index]});
                if (result != null && result is ChargeStationModel) {
                  _data[index] = result;
                }
              },
              child: _buildItem(item, onChanged: (val) {
                _data[index] =
                    _data[index].copyWith(chargeBoxList: List.from(val));
              }));
        },
        separatorBuilder: (_, index) {
          return const SizedBox(height: 16);
        },
        itemCount: _data.length);
  }

  Widget _buildItem(ChargeStationModel item,
      {ValueChanged<List<ChargeBoxModel>>? onChanged}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.05)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppImage.network(item.thumbnail,
              height: 88,
              width: 88,
              fit: BoxFit.cover,
              errorWidget: AppImage.asset(
                IcPng.imageChargeStation,
                height: 88,
                width: 88,
                fit: BoxFit.cover,
              )),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        item.name ?? '',
                        maxLines: 1,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 20 / 14,
                            color: Colors.white),
                      ),
                    ),
                    SvgPicture.asset(IcSvg.icHomeRedirect, width: 24)
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  '${item.address ?? ''}\n',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff606060)),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            IcSvg.icHomeGas,
                            width: 16,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: BlocProvider<ChargeStationCubit>(
                                create: (context) => ChargeStationCubit(),
                                child: TextStationAvailable(
                                  key: Key(item.id.toString()),
                                  chargeBoxId: item.id,
                                  onChanged: onChanged,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          IcSvg.icHomeLocation,
                          width: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${_getDistance(item.distance ?? 0)} km',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 20 / 14,
                              color: Color(0xffFFC218)),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String? _getDistance(num distance) {
    if (distance >= 100) {
      return distance.toStringAsFixed(0);
    }
    return distance.toStringAsFixed(1);
  }
}

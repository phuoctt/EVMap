import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/widgets/charge_station_connectors.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/models/charging_station/station_model.dart';
import 'package:rabbitevc/share/enums/charge_box_type.dart';
import 'package:rabbitevc/share/enums/charge_status_type.dart';
import 'package:rabbitevc/share/enums/station_type.dart';
import 'package:rabbitevc/theme/colors.dart';

class ItemChargeStation extends StatefulWidget {
  final ChargeBox data;
  final ValueChanged<ChargeBoxModel>? onChanged;

  const ItemChargeStation({
    Key? key,
    required this.data,
    this.onChanged,
  }) : super(key: key);

  @override
  State<ItemChargeStation> createState() => _ItemChargeStationState();
}

class _ItemChargeStationState extends State<ItemChargeStation> {
  late ChargeBox item;

  ChargeStationCubit get _cubit => BlocProvider.of(context);

  @override
  void initState() {
    item = widget.data;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // _cubit.onLoadConnectors(item.charge_box_id);
    });
    super.initState();
  }
  @override
  void didUpdateWidget(covariant ItemChargeStation oldWidget) {
    item = widget.data;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final boxType = ChargeBoxStatus.fromValue(item.status);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.05)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                IcSvg.icDetailStationCharging,
                width: 20,
                color: boxType == ChargeBoxStatus.available
                    ? AppColors.primaryColor
                    : Colors.red,
              ),
              const SizedBox(width: 4),
              Expanded(
                  child: Text(
                item.name ?? '',
                maxLines: 1,
                style: const TextStyle(color: Colors.white),
              )),
              const SizedBox(width: 2),
              Text(
                '${'price' ?? 0} điểm/${'item.price?.unit'}',
                style: const TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
          Divider(color: Colors.white.withOpacity(0.1)),
          ChargeStationConnectors(
            data: item,
            onChanged: widget.onChanged,
          )
        ],
      ),
    );
  }
}

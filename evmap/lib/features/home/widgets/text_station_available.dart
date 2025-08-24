import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_box_in_app_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/share/enums/charge_box_type.dart';
import 'package:rabbitevc/share/enums/connector_type.dart';

class TextStationAvailable extends StatefulWidget {
  final num? chargeBoxId;
  final ValueChanged<List<ChargeBoxModel>>? onChanged;
  final bool? showTotal;
  final bool? reload;

  const TextStationAvailable({
    Key? key,
    this.chargeBoxId,
    this.onChanged,
    this.showTotal,
    this.reload
  }) : super(key: key);

  @override
  State<TextStationAvailable> createState() => _TextStationAvailableState();
}

class _TextStationAvailableState extends State<TextStationAvailable> {
  ChargeStationCubit get _cubit => BlocProvider.of(context);
  int? numAvailable;
  List<ChargeBoxModel> list = List.from([]);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _cubit.onLoadChargeBox(widget.chargeBoxId);
    });
  }
  @override
  void didUpdateWidget(covariant TextStationAvailable oldWidget) {
    if(widget.reload==true){
      _cubit.onLoadChargeBox(widget.chargeBoxId);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChargeStationCubit, ChargeStationState>(
      buildWhen: (prev, current) => current is DetailChargeBoxLogged,
      builder: (_, state) {
        state.whenOrNull(detailChargeBox: (data) {
          list = List.from(data);
          widget.onChanged?.call(list);
          numAvailable = 0;
          for (final item in list) {
            final connectorBoxType =
                ConnectorBoxType.fromTypeStatus(item.status);
            if (connectorBoxType == ConnectorBoxType.available) {
              numAvailable = (numAvailable ?? 0) + 1;
            }
          }
        });
        return BlocBuilder<ChargeBoxInAppCubit, ChargeStationState>(
          buildWhen: (prev, current) => current is ChargeBoxInAppLogged,
          builder: (_, state) {
            state.whenOrNull(chargeBoxInAppLogged: (data) {
              numAvailable = 0;
              for (final item in list) {
                ConnectorBoxType? connectorBoxType =
                    ConnectorBoxType.fromTypeStatus(item.status);
                if (item.charge_box_id == data?.charge_box_id) {
                  ChargeBoxEventType? chargeBoxEventType =
                      ChargeBoxEventType.fromTypeStatus(data?.event_name);
                  connectorBoxType =
                      chargeBoxEventType == ChargeBoxEventType.closed ||
                              chargeBoxEventType ==
                                  ChargeBoxEventType.transportError
                          ? ConnectorBoxType.offline
                          : ConnectorBoxType.available;
                }
                if (connectorBoxType == ConnectorBoxType.available) {
                  numAvailable = (numAvailable ?? 0) + 1;
                }
                widget.onChanged?.call(list);
              }
            });
            return Text(
              '${numAvailable ?? 0}${widget.showTotal == true ? '/${list.length}' : ''} trụ khả dụng',
              maxLines: 1,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 20 / 14,
                  color: Color(0xffFFC218)),
            );
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_box_in_app_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_state.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/screens/charge_screen.dart';
import 'package:rabbitevc/features/charge_station/screens/detail_charger_dock.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/enums/charge_box_type.dart';
import 'package:rabbitevc/share/enums/charge_status_type.dart';
import 'package:rabbitevc/share/enums/connector_type.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/no_data.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class ChargeStationConnectors extends StatefulWidget {
  final ChargeBoxModel data;
  final ValueChanged<ChargeBoxModel>? onChanged;

  const ChargeStationConnectors({required this.data, this.onChanged, Key? key})
      : super(key: key);

  @override
  State<ChargeStationConnectors> createState() =>
      _ChargeStationConnectorsState();
}

class _ChargeStationConnectorsState extends State<ChargeStationConnectors> {
  late ChargeBoxModel _data;

  ChargeStationCubit get _cubit => BlocProvider.of(context);

  @override
  void initState() {
    _data = widget.data;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _cubit.onLoadConnectors(_data.charge_box_id);
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ChargeStationConnectors oldWidget) {
    _data = widget.data;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChargeStationCubit, ChargeStationState>(
      builder: (_, state) {
        state.whenOrNull(connectorsLogged: (val) {
          if (val != null) _data = val;
        });

        return _buildListData();
      },
    );
  }

  Widget _buildListData() {
    List<ConnectorsModel> connectors = List.from(_data.connectors ?? []);
    // if (connectors.isEmpty == true) {
    //   return const NoData();
    // }
    widget.onChanged?.call(_data.copyWith(connectors: connectors));
    return ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          ConnectorsModel item = connectors[index];
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => pushNamed(DetailChangerDock.route,
                arguments: {'data': _data, 'index': index}),
            child: BlocBuilder<ChargeCubit, ChargeState>(
              buildWhen: (previous, current) =>
                  current is ChargeConnectorLogged,
              builder: (_, state) {
                return _buildItemConnector(item, index, onChanged: (val) {
                  List<ConnectorsModel> cnts =
                      List.from(_data.connectors ?? []);
                  cnts[index] = val;
                  _data= _data.copyWith(connectors: cnts);
                  widget.onChanged?.call(_data);
                });
              },
            ),
          );
        },
        separatorBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Divider(
              color: Colors.white.withOpacity(0.1),
            ),
          );
        },
        itemCount: connectors.length);
  }

  Widget _buildItemConnector(ConnectorsModel item, int index,
      {ValueChanged<ConnectorsModel>? onChanged}) {
    final url = item.type?.image_url;

    ChargeStatusType? connectorBoxType =
        ChargeStatusType.fromTypeStatus(item.connector_status);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            url?.isNotEmpty == true
                ? AppImage.network(item.type?.image_url, width: 20)
                : SvgPicture.asset(
                    IcSvg.icDetailStationChargingCord,
                    width: 20,
                  ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                '${S.text?.text_charging_cord} ${index + 1} ${item.type != null ? '|' : ''} ${item.type?.power_supply ?? ''} ${item.type?.name ?? ''}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: BlocBuilder<ChargeBoxInAppCubit, ChargeStationState>(
            buildWhen: (prev, current) => current is ChargeBoxInAppLogged,
            builder: (_, state) {
              state.whenOrNull(chargeBoxInAppLogged: (val) {
                if (item.charge_box_id == val?.charge_box_id) {
                  ChargeBoxEventType? chargeBoxEventType =
                      ChargeBoxEventType.fromTypeStatus(val?.event_name);
                  connectorBoxType =
                      chargeBoxEventType == ChargeBoxEventType.closed ||
                              chargeBoxEventType ==
                                  ChargeBoxEventType.transportError
                          ? ChargeStatusType.unavailable
                          : ChargeStatusType.available;
                  if (connectorBoxType == ChargeStatusType.unavailable) {
                    return;
                  }
                }
                if (item.charge_box_id == val?.charge_box_id &&
                    item.connector_id == val?.event_data?.connectorId) {
                  connectorBoxType =
                      ChargeStatusType.fromTypeStatus(val?.event_data?.status);
                  onChanged?.call(
                      item.copyWith(connector_status: val?.event_data?.status));
                }
              });
              return Text(
                connectorBoxType?.statusText ?? '',
                style: TextStyle(fontSize: 10, color: connectorBoxType?.color),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildLoading() {
    return SeparatedColumn(
      separatorBuilder: () => Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Divider(
          color: Colors.white.withOpacity(0.1),
        ),
      ),
      children: [
        Container(
          height: 20,
        ),
        Container(
          height: 20,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/widgets/item_charge_station.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/widget/app_image.dart';

class DetailCharStationScreen extends StatefulWidget {
  final ChargeStationModel? data;
  static const route = '/detail_charge_station';

  const DetailCharStationScreen({this.data, Key? key}) : super(key: key);

  @override
  State<DetailCharStationScreen> createState() =>
      _DetailCharStationScreenState();
}

class _DetailCharStationScreenState extends State<DetailCharStationScreen> {
  ChargeStationModel? _data;

  ChargeStationCubit get _cubit => BlocProvider.of(context);

  @override
  void initState() {
    _data = widget.data;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _cubit.onLoadDetailCharStation(_data?.id);
      if (_data?.chargeBoxList == null &&
          _data?.chargeBoxList?.isEmpty == true) {
        _cubit.onLoadChargeBox(_data?.id);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(IcPng.imageBackgroundApp),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => pop(_data),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          title: Text(_data?.name ?? '',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<ChargeStationCubit, ChargeStationState>(
                buildWhen: (prev, current) =>
                    current is DetailChargeStationLogged,
                builder: (_, state) {
                  state.whenOrNull(detailChargeStation: (data) {
                    _data = data?.copyWith(chargeBoxList: _data?.chargeBoxList);
                  });
                  return _buildHeader(_data);
                },
              ),
              const SizedBox(height: 16),
              BlocBuilder<ChargeStationCubit, ChargeStationState>(
                buildWhen: (prev, current) => current is DetailChargeBoxLogged,
                builder: (_, state) {
                  List<ChargeBoxModel> listBox =
                      List.from(_data?.chargeBoxList ?? []);
                  state.whenOrNull(
                      // detailChargeBox: (data) {
                      //   listBox = List.from(data);
                      // },
                      );
                  return ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final item = listBox[index];
                        return BlocProvider<ChargeStationCubit>(
                            create: (context) => ChargeStationCubit(),
                            child: ItemChargeStation(
                              data: item,
                              onChanged: (val) {
                                List<ChargeBoxModel> list = listBox;
                                list[index] = val;
                                _data = _data?.copyWith(chargeBoxList: list);
                              },
                            ));
                      },
                      separatorBuilder: (_, context) {
                        return const SizedBox(height: 16);
                      },
                      itemCount: listBox.length);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(ChargeStationModel? data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppImage.network(data?.thumbnail,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
            errorWidget: AppImage.asset(
              IcPng.imageChargeStation,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data?.name ?? '',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(height: 8),
              Text(
                data?.address ?? '',
                style: TextStyle(color: Colors.white, fontSize: 14),
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
                          child: Text(
                            '${data?.chargeBoxList?.length ?? 0} trụ sạc',
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 20 / 14,
                                color: Color(0xffFFC218)),
                          ),
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
                        '${_getDistance(data?.distance ?? 0)} km',
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
    );
  }

  String? _getDistance(num distance) {
    if (distance >= 100) {
      return distance.toStringAsFixed(0);
    }
    return distance.toStringAsFixed(1);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/home/widgets/list_charge_station.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';
import 'package:rabbitevc/widget/appbar.dart';

class ChargeStationScreen extends StatefulWidget {
  final String? address;
  static const route = '/charge_station_screen';

  const ChargeStationScreen({
    super.key,
    this.address,
  });

  @override
  State<ChargeStationScreen> createState() => _ChargeStationScreenState();
}

class _ChargeStationScreenState extends State<ChargeStationScreen> {
  ChargeStationCubit get _stationCubit => BlocProvider.of(context);
  final ValueNotifier<String> _addressNotifier = ValueNotifier('');
  Position? position;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      position = await AppUtils.getPosition();
      _onLoadCharStation(position);
      _addressNotifier.value =
          await _getAddress(lat: position?.latitude, long: position?.longitude);
    });
    super.initState();
  }

  void _onLoadCharStation(Position? position) {
    _stationCubit.onLoadCharStation(
        lat: position?.latitude, long: position?.longitude);
  }

  Future<String> _getAddress({double? lat, double? long}) async {
    if (lat != null && long != null) {
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        return '${placemark.name ?? ''},${placemark.subAdministrativeArea ?? ''},${placemark.administrativeArea ?? ''}';
      }
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const BaseAppBar(title: 'Trạm sạc'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Khám phá điểm sạc',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white),
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ValueListenableBuilder<String>(
                      valueListenable: _addressNotifier,
                      builder: (context, value, _) {
                        return Text(value,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: Colors.white));
                      },
                    ),
                  ),
                  const Text('Trạm Sạc Gần Bạn',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColors.primaryColor)),
                ],
              ),
              const SizedBox(height: 16),
              BlocBuilder<ChargeStationCubit, ChargeStationState>(
                builder: (_, state) {
                  return state.maybeWhen(
                      loading: () => const Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: AppCicularIndicator(),
                          ),
                      orElse: () => const Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: AppCicularIndicator(),
                          ),
                      logged: (data, _) => ListChargeStation(data: data));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

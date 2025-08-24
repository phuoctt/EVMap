import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rabbitevc/features/booking/screens/book_info_screen.dart';
import 'package:rabbitevc/features/booking/screens/book_info_screen2.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/screens/charge_screen.dart';
import 'package:rabbitevc/features/charge_station/screens/detail_charger_dock.dart';
import 'package:rabbitevc/features/history/screens/detail_bill_screen.dart';
import 'package:rabbitevc/features/home/widgets/badge_home_view.dart';
import 'package:rabbitevc/features/home/widgets/booking_badge_countdown.dart';
import 'package:rabbitevc/features/home/widgets/home_widget.dart';
import 'package:rabbitevc/features/home/widgets/list_charge_station.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_cubit.dart';
import 'package:rabbitevc/features/profile/profile/cubit/profile_state.dart';
import 'package:rabbitevc/features/profile/profile/cubit/user_point_cubit.dart';
import 'package:rabbitevc/features/profile/profile/cubit/user_point_state.dart';
import 'package:rabbitevc/features/top_up/screens/top_up_screen.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_cubit.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_state.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/booking/booking_model.dart';
import 'package:rabbitevc/models/history/detail_bill_model.dart';
import 'package:rabbitevc/models/transaction/transaction_model.dart';
import 'package:rabbitevc/models/user/user_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/event_bus/event_bus_manager.dart';
import 'package:rabbitevc/share/enums/transaction_active_type.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/extensions/num.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/widget/app_avatar.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';
import 'package:rabbitevc/widget/app_image.dart';

class HomeView extends StatefulWidget {
  static const route = '/home';

  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with AutomaticKeepAliveClientMixin {
  ChargeStationCubit get _stationCubit => BlocProvider.of(context);
  final ValueNotifier<String> _addressNotifier = ValueNotifier('');
  Position? position;

  @override
  void initState() {
    EventBusManager.eventBus.on().listen((e) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        if (e == EventType.authenticated) {
          position = await AppUtils.getPosition();
          _onLoadCharStation(position);
          _addressNotifier.value = await _getAddress(
              lat: position?.latitude, long: position?.longitude);
        }
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _addressNotifier.dispose();
    super.dispose();
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
    TransactionModel? transactionModel;
    DetailBillModel? billModel;
    TransactionActiveType? _type;
    BookingModel? bookingModel;
    num? idTransaction;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(IcPng.imageBackgroundAppCenter),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Stack(
        children: [
          SafeArea(
            bottom: false,
            child: RefreshIndicator(
              onRefresh: () async {
                // BlocProvider.of<TransactionCubit>(context).onCheckActive();
              },
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeWidget(),
                    const SizedBox(height: 180),
                  ],
                ),
              ),
            ),
          ),
          BlocBuilder<TransactionCubit, TransactionState>(
            buildWhen: (prev, current) =>
                current is TransactionCheckActiveLogged ||
                current is DetailBillLogged ||
                current is TransactionDetailLogged ||
                current is ReservationkActiveLogged,
            builder: (_, state) {
              state.whenOrNull(checkActive: (ids, type) {
                _type = type;
                idTransaction = ids?.isNotEmpty == true ? ids?.first : null;
              }, detailLogged: (val) {
                _type = TransactionActiveType.active;
                transactionModel = val;
              }, detailBillLogged: (val) {
                _type = TransactionActiveType.notPay;
                billModel = val;
              }, reservationActiveLogged: (val) {
                _type = TransactionActiveType.booking;
                bookingModel = val;
              });
              if (idTransaction != null &&
                  (billModel != null || transactionModel != null)) {
                return GestureDetector(
                  onTap: () {
                    switch (_type) {
                      case TransactionActiveType.active:
                        if (transactionModel != null) {
                          pushNamed(ChargeScreen.route,
                              arguments: {'transaction': transactionModel});
                        }
                        break;
                      case TransactionActiveType.notPay:
                        if (billModel != null) {
                          pushNamed(DetailBillScreen.route,
                              arguments: {'id': idTransaction});
                        }
                        break;
                      case null:
                      // TODO: Handle this case.
                    }
                  },
                  child: _type != null
                      ? Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: const EdgeInsets.only(bottom: 100),
                              child: BadgeHomeView(
                                path: _type == TransactionActiveType.active
                                    ? IcSvg.icHomeBadge
                                    : IcSvg.icHistoryBill,
                                title: _type == TransactionActiveType.active
                                    ? S.text?.home_badge_description
                                    : S.text?.home_badge_bill_description,
                                content: _type == TransactionActiveType.active
                                    ? S.text?.home_charging_progress('--')
                                    : '${billModel?.total_value ?? 0} ${billModel?.unit ?? ''} / ${billModel?.total_price ?? 0}',
                              )),
                        )
                      : const SizedBox.shrink(),
                );
              } else {
                if (bookingModel != null) {
                  final from = bookingModel?.startDatetime.toTimeZones() ??
                      DateTime.now();
                  final to =
                      bookingModel?.endDatetime.toTimeZones() ?? DateTime.now();
                  return GestureDetector(
                    onTap: () {
                      pushNamed(BookingInfoScreen2.route,
                          arguments: {'bookingModel': bookingModel});
                    },
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: const EdgeInsets.only(bottom: 100),
                          child: BadgeHomeView(
                            path: _type?.icon,
                            title: _type != TransactionActiveType.booking
                                ? _type?.title
                                : S.text?.booking_content_me(
                                    AppUtils.formatHHMMSS(
                                        to.difference(from).inSeconds),
                                    '${from.toDate('HH:mm')}-${to.toDate('HH:mm')}'),
                            contentWidget: BookingBadgeCountDown(endTime: to),
                          )),
                    ),
                  );
                }
                return const SizedBox.shrink();
              }
            },
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

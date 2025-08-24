import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_box_in_app_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_state.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/widgets/charge_timer.dart';
import 'package:rabbitevc/features/charge_station/widgets/ripple_animation_charging.dart';
import 'package:rabbitevc/features/history/screens/detail_bill_screen.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_cubit.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/models/charge_station/charge_model.dart';
import 'package:rabbitevc/models/transaction/transaction_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/service/local_storage/local_storage_service.dart';
import 'package:rabbitevc/share/enums/charge_box_type.dart';
import 'package:rabbitevc/share/enums/charge_status_type.dart';
import 'package:rabbitevc/share/enums/charge_step_type.dart';
import 'package:rabbitevc/share/extensions/num.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_card_box.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/loading_screen.dart';
import 'package:rabbitevc/widget/notify_dialog.dart';
import 'package:lottie/lottie.dart';
import 'package:collection/collection.dart';

class ChargeScreen extends StatefulWidget {
  final int? index;
  final ChargeBoxModel? data;
  final TransactionModel? transactionModel;
  final String? chargeBoxId;
  final num? connectorId;

  static const route = '/charge';

  const ChargeScreen({
    Key? key,
    this.index,
    this.data,
    this.transactionModel,
    this.chargeBoxId,
    this.connectorId,
  }) : super(key: key);

  @override
  State<ChargeScreen> createState() => _ChargeScreenState();
}

class _ChargeScreenState extends State<ChargeScreen>
    with TickerProviderStateMixin {
  ChargeCubit get _cubit => BlocProvider.of(context);

  ChargeStationCubit get _chargeStationCubit => BlocProvider.of(context);
  ConnectorsModel? _connector;
  late ChargeBoxModel? _data;
  ChargeStepType _step = ChargeStepType.step1;
  late final AnimationController _controller;
  ChargeStatusType? chargeStatus;
  TransactionModel? _transactionModel;

  @override
  void initState() {
    _transactionModel = widget.transactionModel;
    _controller = AnimationController(vsync: this);
    _data = widget.data;
    _cubit.onConnectSocket(widget.chargeBoxId ??
        _transactionModel?.charge_box_id ??
        _data?.charge_box_id);
    if (_data?.connectors?.isNotEmpty == true) {
      _connector = _data?.connectors![widget.index ?? 0];
    }
    chargeStatus = ChargeStatusType.fromTypeStatus(_data?.status);
    _checkTransaction();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (_transactionModel != null) {
        _chargeStationCubit.onLoadConnectors(_transactionModel?.charge_box_id);
      }
      if (widget.chargeBoxId?.isNotEmpty == true) {
        _chargeStationCubit.onLoadConnectors(widget.chargeBoxId);
      }
    });
    super.initState();
  }

  @override
  void deactivate() {
    // _cubit.disConnect();
    BlocProvider.of<TransactionCubit>(context).onCheckActive();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _checkTransaction() {
    final string = getIt
        .get<LocalStorageService>()
        .getString(LocalStorageKey.transactionModel.name);
    if (_data == null && widget.chargeBoxId?.isEmpty == true) {
      return;
    }
    TransactionModel? transactionModel;
    if (string?.isNotEmpty == true) {
      Map<String, dynamic> result = jsonDecode(string!);
      transactionModel = TransactionModel.fromJson(result);
    }
    if (_transactionModel != null) {
      transactionModel = _transactionModel;
    }
    if (transactionModel != null) {
      if (transactionModel.charge_box_id == _data?.charge_box_id &&
          transactionModel.connector_id == _connector?.connector_id) {
        _nextCharge(transactionModel);
      }
    }
  }

  void _nextCharge(TransactionModel transactionModel) {
    _transactionModel = transactionModel;
    _step = ChargeStepType.step4;
    chargeStatus = ChargeStatusType.charging;
    _cubit.onNextCharge(transactionModel);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ChargeCubit, ChargeState>(
          // listenWhen: (previous, current) => current is! ChargeStep3Logged,
          listener: (context, state) {
            // LoadingScreen.close();
            state.whenOrNull(
                // loadingScreen: () => LoadingScreen.show(),
                stopCharge: (transactionId) {
                  setState(() {
                    _transactionModel = null;
                    // BlocProvider.of<TransactionCubit>(context).onCheckActive();
                  });
                  popAndPushNamed(DetailBillScreen.route,
                      arguments: {'id': transactionId});
                },
                error: (mess) => NotifyDialog.showMessage(
                      content: mess,
                    ));
          },
        ),
        BlocListener<ChargeStationCubit, ChargeStationState>(
          // listenWhen: (previous, current) => current is! ChargeStep3Logged,
          listener: (context, state) {
            LoadingScreen.close();
            state.whenOrNull(
                loading: () => LoadingScreen.show(),
                error: (mess) => NotifyDialog.showMessage(
                      content: mess,
                    ));
          },
        )
      ],
      child: BlocBuilder<ChargeStationCubit, ChargeStationState>(
        builder: (_, state) {
          state.whenOrNull(connectorsLogged: (val) {
            if (val != null) {
              _data = val;
              if (_transactionModel != null) {
                _step = ChargeStepType.step4;
                chargeStatus = ChargeStatusType.charging;
                _cubit.onNextChargeTransaction(_transactionModel!);
              }
              if (widget.chargeBoxId?.isNotEmpty == true &&
                  widget.connectorId != null) {
                _connector = _data?.connectors?.firstWhereOrNull(
                    (element) => element.connector_id == widget.connectorId);
                chargeStatus = ChargeStatusType.fromTypeStatus(
                    _connector?.connector_status);
                _checkTransaction();
              }
              if (_data?.connectors?.isNotEmpty == true) {
                // _connector = _data?.connectors?.firstWhere((element) =>
                //     element.connector_id == _transactionModel?.connector_id);
              }
            }
          });

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
                  centerTitle: true,
                  elevation: 0,
                  title: const Text('Tesla Model S 2018',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                body: BlocBuilder<ChargeCubit, ChargeState>(
                  buildWhen: (prev, current) => current is ChargingLogged,
                  builder: (_, state) {
                    state.whenOrNull(chargingLogged: (data, status) {
                      chargeStatus = status ??
                          ChargeStatusType.fromTypeStatus(data?.status);
                    });
                    return BlocBuilder<ChargeBoxInAppCubit, ChargeStationState>(
                      buildWhen: (prev, current) {
                        return current is ChargeBoxInAppLogged;
                      },
                      builder: (_, state) {
                        state.whenOrNull(chargeBoxInAppLogged: (val) {
                          if ((val?.charge_box_id == _data?.charge_box_id) &&
                              chargeStatus != ChargeStatusType.unavailable) {
                            ChargeBoxEventType? chargeBoxEventType =
                                ChargeBoxEventType.fromTypeStatus(val?.event_name);
                            if (chargeBoxEventType ==
                                    ChargeBoxEventType.transportError ||
                                chargeBoxEventType ==
                                    ChargeBoxEventType.closed) {
                              chargeStatus = ChargeStatusType.unavailable;
                            }
                          }
                        });
                        return _buildScreen();
                      },
                    );
                  },
                )),
          );
        },
      ),
    );
  }

  Widget _buildScreen() {
    return SafeArea(
      minimum: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  // chargeStatus == ChargeStatusType.charging
                  //     ? _buildModelCharging()
                  //     :
                  _buildModel(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chargeStatus?.statusText ?? '-----',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 28),
                      ),
                      // Text(
                      //   '--%',
                      //   style: TextStyle(
                      //       color: Colors.white, fontSize: 28),
                      // )
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      SvgPicture.asset(IcSvg.icStationCha, width: 18),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Chế độ: Sạc nhanh',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            // Text(
                            //   '--',
                            //   style: TextStyle(
                            //       color: Colors.white,
                            //       fontSize: 12),
                            // )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  _box(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _data?.charge_box_name ?? '',
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            SvgPicture.asset(
                              IcSvg.icDetailStationChargingCord,
                              width: 20,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              '${S.text?.text_charging_cord} ${(widget.index ?? 0) + 1} ${_connector?.type != null ? '|' : ''} ${_connector?.type?.power_supply ?? ''} ${_connector?.type?.name ?? ''}',
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xffFFC218)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                  const SizedBox(height: 16),
                  BlocBuilder<ChargeCubit, ChargeState>(
                    buildWhen: (prev, current) => current is ChargingLogged,
                    builder: (_, state) {
                      ChargeDataModel? data;
                      state.whenOrNull(chargingLogged: (val, status) {
                        data = val;
                      });
                      final valueEnergy = (double.parse(data?.meta
                                  ?.energy_active_import_register?.value ??
                              '0') /
                          1000);

                      final valuePower = (double.parse(
                              data?.meta?.power_active_import?.value ?? '0') /
                          1000);
                      return _box(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child:
                                          BlocBuilder<ChargeCubit, ChargeState>(
                                        builder: (_, state) {
                                          state.whenOrNull(
                                              startChargeLogged: (val) {
                                            _transactionModel = val;
                                          }, stopCharge: (transactionId) {
                                            _transactionModel = null;
                                          });
                                          return ChargeTimer(
                                            eventTime: _transactionModel
                                                ?.start_event_timestamp,
                                          );
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        child: _itemBox(
                                            title: data?.meta?.temperature
                                                    ?.value ??
                                                '--',
                                            subTitle:
                                                data?.meta?.temperature?.unit ??
                                                    '--',
                                            content: 'Nhiệt độ trạm sạc'),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Divider(
                                    height: 1,
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: _itemBox(
                                          title: valueEnergy == 0
                                              ? '--'
                                              : valueEnergy
                                                  .toValue()
                                                  .toString(),
                                          subTitle: data
                                                      ?.meta
                                                      ?.energy_active_import_register
                                                      ?.unit
                                                      ?.isNotEmpty ==
                                                  true
                                              ? 'kW'
                                              : '--',
                                          content: 'Lượng điện tiêu thụ'),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        child: _itemBox(
                                            title: valuePower == 0
                                                ? '--'
                                                : valuePower
                                                    .toValue()
                                                    .toString(),
                                            subTitle: data
                                                        ?.meta
                                                        ?.power_active_import
                                                        ?.unit
                                                        ?.isNotEmpty ==
                                                    true
                                                ? 'kW'
                                                : '--',
                                            content: 'Công suất'),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          icon: IcSvg.icDetailStationSetting);
                    },
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            )),
            _buttonStep()
          ],
        ),
      ),
    );
  }

  Widget _buildModel() {
    return SizedBox(
      height: 260,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          chargeStatus == ChargeStatusType.charging
              ? const RippleAnimationCharging()
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 7, 50, 16),
            child: AppImage.asset(IcPng.icDetailStationEffect3,
                width: double.infinity),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: AppImage.asset(IcPng.icDetailStationEffect2,
                width: double.infinity),
          ),

          // Container(
          //   height: 137,
          //   width: double.infinity,
          //   // margin: const
          //   // EdgeInsets.only(top: 40, left: 40, right: 40),
          //   decoration: BoxDecoration(
          //     // color: AppColors.primaryColor,
          //     // border: Border.all(color: Colors.black, width: 0.0),
          //     // borderRadius: new BorderRadius.all(Radius.elliptical(100, 50)),
          //     boxShadow: [
          //       BoxShadow(
          //           blurRadius: 100,
          //           spreadRadius: 2,
          //           color: AppColors.primaryColor)
          //     ],
          //   ),
          //   child: Text('     '),
          // ),
          Positioned(
            bottom: 60,
            child: Container(
              height: 207,
              padding: const EdgeInsets.only(bottom: 20),
              child: AppImage.asset(IcPng.imageCarDemo),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModelCharging() {
    return Stack(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          child: Lottie.asset(
            'assets/lottie/charging.json',
            // controller: _controller,
            // onLoaded: (composition) {
            //   // Configure the AnimationController with the duration of the
            //   // Lottie file and start the animation.
            //   _controller
            //     ..duration = composition.duration
            //     ..forward();
            // },
          ),
        ),
        Center(
            child: SizedBox(
          height: 350,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // AppImage.asset(IcPng.icDetailStationEffect1,
              //     width: double.infinity),
              // Padding(
              //   padding: const EdgeInsets.all(30.0),
              //   child: AppImage.asset(
              //       IcPng.icDetailStationEffect2,
              //       width: double.infinity),
              // ),
              // AppImage.asset(IcPng.icDetailStationEffect3,
              //     width: double.infinity),
              Container(
                height: 207,
                padding: const EdgeInsets.only(bottom: 35),
                child: AppImage.asset(IcPng.imageCarDemo),
              ),
            ],
          ),
        )),
      ],
    );
  }

  Widget _buttonStep() {
    return BlocBuilder<ChargeCubit, ChargeState>(
      builder: (_, state) {
        bool isLoading = false;
        bool isLoadingScreen = false;

        state.whenOrNull(
          init: () {
            _step = ChargeStepType.step1;
          },
          loading: () {
            isLoading = true;
          },
          loadingScreen: () {
            isLoadingScreen = true;
          },
          step1Logged: (step) {
            _step = step;
          },
          step2Logged: (step) {
            _step = step;
          },
          step3Logged: (step) {
            _step = step;
          },
        );
        if (chargeStatus == ChargeStatusType.suspendedEV) {
          isLoadingScreen = true;
        } else {
          if (isLoadingScreen) {
            isLoadingScreen == false;
          }
        }
        if (chargeStatus == null) {
          return const SizedBox.shrink();
        }
        if (chargeStatus == ChargeStatusType.charging && _transactionModel!=null) {
          _step = ChargeStepType.step4;
        }
        return (chargeStatus == ChargeStatusType.offline ||
                chargeStatus == ChargeStatusType.unavailable)
            ? const SizedBox.shrink()
            : isLoadingScreen
                ? AppButton(
                    width: double.infinity,
                    height: 56,
                    onPressed: () {},
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ))
                : AbsorbPointer(
                    absorbing: (_step == ChargeStepType.step1),
                    child: AppButton(
                      width: double.infinity,
                      // isLoading: false,
                      height: 56,
                      onPressed: isLoading ? () {} : _onClick,
                      child: isLoading
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                preIconButton2(_step),
                                const SizedBox(width: 7),
                                Text(
                                  _step.stepTitle ?? '',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff061620)),
                                )
                              ],
                            ),
                    ),
                  );
      },
    );
  }

  void _onClick() {
    switch (_step) {
      case ChargeStepType.step1:
        _cubit.onConnectCharge(_connector?.charge_box_id);
        break;
      case ChargeStepType.step2:
        _cubit.onLockCar(_data?.charge_box_id, _connector?.connector_id);
        break;
      case ChargeStepType.step3:
        _cubit.onStartCharge(_data?.charge_box_id, _connector?.connector_id);
        break;
      case ChargeStepType.step4:
        NotifyDialog.showConfirm(
            content: S.text?.charge_confirm_stop_charge,
            onPressed: () {
              _cubit.onTopCharge(
                  _data?.charge_box_id, _transactionModel?.transaction_id);
            });
        break;
    }
  }

  String? getTitleStep(ChargeStatusType? type) {
    switch (type) {
      case ChargeStatusType.available:
        return S.text?.charge_step1_title;
      case ChargeStatusType.charging:
        return S.text?.charge_step3_title;
      case ChargeStatusType.offline:
        return '';
      case ChargeStatusType.preparing:
        return S.text?.charge_step2_title;
      case ChargeStatusType.suspendedEV:
        return '';
      case ChargeStatusType.finishing:
        return '';
      case ChargeStatusType.unavailable:
        return '';
      case null:
        return '';
    }
    return '';
  }

  Widget preIconButton(ChargeStatusType? type) {
    switch (type) {
      case ChargeStatusType.available:
        return const SizedBox(
            width: 25,
            height: 25,
            child:
                CircularProgressIndicator(color: Colors.white, strokeWidth: 4));
      case ChargeStatusType.charging:
        return SvgPicture.asset(IcSvg.icStationPause, width: 20);
      case ChargeStatusType.offline:
        return const SizedBox.shrink();
      case ChargeStatusType.preparing:
        return const SizedBox.shrink();
      case ChargeStatusType.suspendedEV:
        return const SizedBox.shrink();
      case ChargeStatusType.finishing:
        return const SizedBox.shrink();
      case ChargeStatusType.unavailable:
        return const SizedBox.shrink();
      case null:
        return const SizedBox.shrink();
    }
    return const SizedBox.shrink();
  }

  Widget preIconButton2(ChargeStepType type) {
    switch (type) {
      case ChargeStepType.step1:
        return const SizedBox(
            width: 25,
            height: 25,
            child:
                CircularProgressIndicator(color: Colors.white, strokeWidth: 4));
      case ChargeStepType.step2:
        return const SizedBox.shrink();
      case ChargeStepType.step3:
        return const SizedBox.shrink();
      case ChargeStepType.step4:
        return SvgPicture.asset(IcSvg.icStationPause, width: 20);
    }
  }

  Widget _itemBox({String? title, String? subTitle, String? content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title ?? '',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 3),
            Text(
              subTitle ?? '',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          content ?? '',
          style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.6)),
        ),
      ],
    );
  }

  Widget _box({Widget? child, String? icon}) {
    return AppCardBox(
      icon: icon,
      child: child,
    );
  }
}

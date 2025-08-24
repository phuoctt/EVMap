import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/history/cubit/history_cubit.dart';
import 'package:rabbitevc/features/history/views/history_box_info_charge.dart';
import 'package:rabbitevc/features/history/views/item_box_info_charge.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_cubit.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_state.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/models/history/detail_bill_model.dart';
import 'package:rabbitevc/models/history/history_model.dart';
import 'package:rabbitevc/models/transaction/transaction_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/enums/bill_type.dart';
import 'package:rabbitevc/share/extensions/num.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_card_box.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';
import 'package:rabbitevc/widget/appbar.dart';
import 'package:rabbitevc/widget/loading_screen.dart';
import 'package:rabbitevc/widget/notify_dialog.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class DetailBillScreen extends StatefulWidget {
  final num? transactionId;
  final num? historyId;
  static const route = '/detail_bill';

  const DetailBillScreen({
    Key? key,
    this.transactionId,
    this.historyId,
  }) : super(key: key);

  @override
  State<DetailBillScreen> createState() => _DetailBillScreenState();
}

class _DetailBillScreenState extends State<DetailBillScreen> {
  HistoryCubit get _historyCubit => BlocProvider.of(context);

  TransactionCubit get _transactionCubit => BlocProvider.of(context);

  ChargeStationCubit get chargeStationCubit => BlocProvider.of(context);

  HistoryModel? _historyModel;
  DetailBillModel? _detailBillModel;
  TransactionModel? _transactionModel;
  ChargeBoxModel? _chargeBoxModel;
  num? _transactionId;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _transactionId = widget.transactionId;
      if (widget.historyId != null) {
        _transactionCubit.onLoadChargingBill(widget.historyId);
        return;
      }
      if (_transactionId != null) {
        _onLoadData(_transactionId);
      }
    });
    super.initState();
  }

  void _onLoadData(num? id) {
    _transactionId = id;
    _transactionCubit.onLoadDetailBill(_transactionId);
    _transactionCubit.onLoadDetailTransaction(_transactionId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TransactionCubit, TransactionState>(
      listener: (context, state) {
        LoadingScreen.close();
        state.whenOrNull(
            detailLogged: (val) =>
                chargeStationCubit.onLoadConnectors(val?.charge_box_id),
            loadingScreen: () => LoadingScreen.show(),
            chargingBillLogged: (val) {
              _onLoadData(val?.transaction_id);
            },
            paymentSuccess: () {
              NotifyDialog.showMessage(
                  title: S.text?.bill_payment_success,
                  content: S.text?.bill_payment_thank_you,
                  isWillPop: false,
                  onPressed: pop);
            });
      },
      child: AppScaffold(
        appBar: BaseAppBar(
          title: S.text?.bill_charge_title,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        BlocBuilder<ChargeStationCubit, ChargeStationState>(
                          buildWhen: (prev, current) =>
                              current is ChargeStationConnectorsLogged,
                          builder: (_, state) {
                            state.whenOrNull(connectorsLogged: (data) {
                              _chargeBoxModel = data;
                            });
                            return _buildInfoChargeBox(_chargeBoxModel);
                          },
                        ),
                        const SizedBox(height: 24),
                        BlocBuilder<TransactionCubit, TransactionState>(
                          buildWhen: (prev, current) =>
                              current is TransactionDetailLogged ||
                              current is DetailBillLogged,
                          builder: (_, state) {
                            state.whenOrNull(detailLogged: (val) {
                              _transactionModel = val;
                            }, detailBillLogged: (val) {
                              _detailBillModel = val;
                            });
                            return HistoryBoxInfoCharge(
                              transactionModel: _transactionModel,
                              detailBill: _detailBillModel,
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        BlocBuilder<TransactionCubit, TransactionState>(
                          buildWhen: (prev, current) =>
                              current is DetailBillLogged,
                          builder: (_, state) {
                            state.whenOrNull(detailBillLogged: (val) {
                              _detailBillModel = val;
                            });
                            return AppCardBox(
                              icon: IcSvg.icDetailStationCharging,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: ItemBoxInfoCharge(
                                            title: (_detailBillModel
                                                            ?.total_price ??
                                                        0)
                                                    .abs()
                                                    .toCurrency() ??
                                                '',
                                            content: S.text?.bill_payment)),
                                    Expanded(
                                        flex: 1,
                                        child: BlocBuilder<ChargeStationCubit,
                                            ChargeStationState>(
                                          builder: (_, state) {
                                            num? price;
                                            String? unit;
                                            state.whenOrNull(
                                                connectorsLogged: (data) {
                                              price = data
                                                  ?.price?.details?.first.price;
                                              unit = data?.price?.unit;
                                            });
                                            return ItemBoxInfoCharge(
                                                title: price.toCurrency() ?? '',
                                                content:
                                                    '${S.text?.bill_unit_price}${unit ?? ''}');
                                          },
                                        )),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                BlocBuilder<TransactionCubit, TransactionState>(
                  buildWhen: (prev, current) => current is DetailBillLogged,
                  builder: (_, state) {
                    return state.maybeWhen(
                        orElse: () => const SizedBox.shrink(),
                        detailBillLogged: (val) {
                          final status =
                              BillType.pending.name == val?.bill_status_code;
                          if (status) {
                            return AppButton(
                              title: S.text?.bill_payment_now,
                              width: double.infinity,
                              onPressed: () =>
                                  _transactionCubit.onPayment(val?.id),
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoChargeBox(ChargeBoxModel? data) {
    DetailBillModel? detailBillModel;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
            flex: 6,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 7, 20, 10),
                  child: AppImage.asset(IcPng.icDetailStationEffect3,
                      width: double.infinity),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: AppImage.asset(IcPng.icDetailStationEffect2,
                      width: double.infinity),
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: AppImage.asset(IcPng.imageDetailBill, height: 110)),
              ],
            )),
        Expanded(
          flex: 4,
          child: SeparatedColumn(
            separatorBuilder: () => const SizedBox(height: 12),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.semanticColor),
                child: BlocBuilder<TransactionCubit, TransactionState>(
                  buildWhen: (prev, current) => current is DetailBillLogged,
                  builder: (_, state) {
                    state.whenOrNull(detailBillLogged: (val) {
                      detailBillModel = val;
                    });
                    return Text(
                      'ID: #${detailBillModel?.transaction_id ?? 0}',
                      style: AppTextStyle.captionBold,
                    );
                  },
                ),
              ),
              _buildItemInfoBox(
                  path: IcSvg.icDashboardStation,
                  title: data?.charge_station?.name,
                  subTitle: S.text?.text_station),
              _buildItemInfoBox(
                  path: IcSvg.icStationCha,
                  title: data?.charge_box_name,
                  subTitle: S.text?.text_head),
              _buildItemInfoBox(
                  path: IcSvg.icDetailStationChargingCord,
                  title: '01',
                  subTitle: S.text?.text_charging_cord),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildItemInfoBox({
    String? path,
    String? title,
    String? subTitle,
  }) {
    return Row(
      children: [
        SvgPicture.asset(
          path ?? '',
          width: 24,
          color: AppColors.primaryColor,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? '',
                overflow: TextOverflow.ellipsis,
                style:
                    AppTextStyle.smallTextMedium.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 2),
              Text(
                subTitle ?? '',
                style: AppTextStyle.smallTextMedium
                    .copyWith(color: GreyColor.grey600),
              )
            ],
          ),
        )
      ],
    );
  }
}

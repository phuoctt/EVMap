import 'package:flutter/material.dart';
import 'package:rabbitevc/features/history/views/item_box_info_charge.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/history/detail_bill_model.dart';
import 'package:rabbitevc/models/history/history_model.dart';
import 'package:rabbitevc/models/transaction/transaction_model.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_card_box.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class HistoryBoxInfoCharge extends StatelessWidget {
  final DetailBillModel? detailBill;
  final TransactionModel? transactionModel;

  const HistoryBoxInfoCharge({
    Key? key,
    this.transactionModel,
    this.detailBill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardBox(
      icon: IcSvg.icDetailStationSetting,
      child: SeparatedColumn(
        padding: const EdgeInsets.all(16),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.text?.bill_charge_title ?? '',
            style: AppTextStyle.bodyMedium.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: ItemBoxInfoCharge(
                      title: '#${detailBill?.transaction_id ?? 0}',
                      content: S.text?.bill_trading_code)),
              Expanded(
                  flex: 1,
                  child: ItemBoxInfoCharge(
                      title: detailBill == null
                          ? ''
                          : '${detailBill?.total_value ?? 0} ${detailBill?.unit ?? ''}',
                      content: 'Tổng lượng điện tiêu thụ')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              height: 1,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
          ItemBoxInfoCharge(
              widgetTitle: buildTime(transactionModel?.start_event_timestamp),
              content: 'Bắt đầu'),
          const SizedBox(height: 16),
          ItemBoxInfoCharge(
              widgetTitle: buildTime(transactionModel?.stop_event_timestamp),
              content: 'Kết thúc'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              height: 1,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: ItemBoxInfoCharge(
                      title: transactionModel?.charging_time ?? '',
                      content: 'Thời gian sạc')),
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.semanticColor,
                        ),
                        child: Text(
                          detailBill?.bill_status_name?.toUpperCase() ?? '',
                          style: AppTextStyle.captionBold,
                        ),
                      ),
                      Text(
                        S.text?.bill_status_payment ?? '',
                        style: AppTextStyle.smallTextRegular
                            .copyWith(color: GreyColor.grey500),
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTime(DateTime? time) {
    return RichText(
      text: TextSpan(
        text: time.toDateLocale('HH:mm:ss'),
        style: const TextStyle(
            fontFamily: AppFonts.beVietnamPro,
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            height: 30 / 20),
        children: <TextSpan>[
          TextSpan(
              text: time.toDateLocale(' DD/MM/yyyy'),
              style: const TextStyle(
                  fontFamily: AppFonts.beVietnamPro,
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  height: 30 / 14)),
        ],
      ),
    );
  }
}

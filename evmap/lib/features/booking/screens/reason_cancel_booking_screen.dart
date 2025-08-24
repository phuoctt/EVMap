import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/booking/cubit/booking_cubit.dart';
import 'package:rabbitevc/features/booking/cubit/booking_state.dart';
import 'package:rabbitevc/features/transaction/cubit/transaction_cubit.dart';
import 'package:rabbitevc/models/booking/reason_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';
import 'package:rabbitevc/widget/appbar.dart';
import 'package:rabbitevc/widget/loading_screen.dart';
import 'package:rabbitevc/widget/notify_dialog.dart';

class ReasonCancelBookingScreen extends StatefulWidget {
  final num? idBooking;
  static const route = '/booking_reason_cancel';

  const ReasonCancelBookingScreen({
    super.key,
    this.idBooking,
  });

  @override
  State<ReasonCancelBookingScreen> createState() =>
      _ReasonCancelBookingScreenState();
}

class _ReasonCancelBookingScreenState extends State<ReasonCancelBookingScreen> {
  // List<String> reasons = [
  //   'Tôi gặp phải một sự cố bất ngờ',
  //   'Tôi đã có sự thay đổi lịch trình',
  //   'Tôi muốn thay đổi điểm sạc',
  //   'Vị trí bất tiện',
  //   'Chi phí sạc cao',
  //   'Điều kiện thời tiết xấu',
  //   'Thiếu tiện nghi',
  //   'Không có chỗ sạc',
  //   'Lý do khác',
  // ];
  // String reason = '';
  ReasonModel? model;

  BookingCubit get _cubit => BlocProvider.of(context);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _cubit.onLoadReason();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookingCubit, BookingState>(
      listener: (context, state) {
        LoadingScreen.close();
        state.whenOrNull(
            loadingScreen: () => LoadingScreen.show(),
            bookingCancel: (id) {
              NotifyDialog.showMessage(
                  isWillPop: false,
                  content: 'Hủy đặt chỗ thành công',
                  onPressed: () {
                    pop();
                    pop();
                  });
            },
            error: (err) {
              NotifyDialog.showMessage(content: err);
            });
      },
      child: AppScaffold(
        appBar: BaseAppBar(
          title: S.text?.booking_cancel,
        ),
        body: BlocBuilder<BookingCubit, BookingState>(
          buildWhen: (prev, current) =>
              current is BookingLoading || current is BookingReasionLogged,
          builder: (_, state) {
            return state.maybeWhen(
                orElse: () => const AppCicularIndicator(),
                reasonLogged: _buildData);
          },
        ),
      ),
    );
  }

  Widget _buildData(List<ReasonModel> reasons) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Thời gian đặt chỗ',
                style: AppTextStyle.largeTextBold
                    .copyWith(color: GreyColor.grey500),
              ),
            ),
            const SizedBox(height: 16),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                final item = reasons[index];
                bool isSelect = model?.id == item.id;

                return RadioListTile(
                  value: model?.id,
                  groupValue: item.id,
                  contentPadding: const EdgeInsets.only(left: 10, right: 16),
                  onChanged: (ind) {
                    setState(() {
                      model = item;
                    });
                  },
                  activeColor: AppColors.green2,
                  title: Text(
                    item.reasonVi ?? '',
                    style: AppTextStyle.largeTextMedium.copyWith(
                        fontWeight: FontWeight.w400,
                        color: isSelect ? GreyColor.grey2 : GreyColor.grey500),
                  ),
                );
              },
              itemCount: reasons.length,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppButton(
                height: 44,
                width: double.infinity,
                title: 'Xác nhận hủy',
                onPressed: model != null
                    ? () => _cubit.onCancelBooking(widget.idBooking)
                    : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}

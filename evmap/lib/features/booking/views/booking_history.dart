import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/booking/cubit/booking_cubit.dart';
import 'package:rabbitevc/features/booking/cubit/booking_state.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/booking/booking_model.dart';
import 'package:rabbitevc/share/enums/history_reservation_type.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/extensions/num.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:rabbitevc/widget/load_more.dart';
import 'package:rabbitevc/widget/no_data.dart';

class BookingHistory extends StatefulWidget {
  const BookingHistory({super.key});

  @override
  State<BookingHistory> createState() => _BookingHistoryState();
}

class _BookingHistoryState extends State<BookingHistory> {
  BookingCubit get _cubit => BlocProvider.of(context);
  List<BookingModel> _data = List.from([]);
  bool? _isFinish;
  int page = 1;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _cubit.onLoadReservationHistory();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingCubit, BookingState>(
      builder: (_, state) {
        return state.maybeWhen(
            orElse: () => const AppCicularIndicator(),
            loading: () => const AppCicularIndicator(),
            reservationHistoryLogged: _buildData);
      },
    );
  }

  Widget _buildData(List<BookingModel>? data, bool? isFinish) {
    _data = List.from(data ?? []);
    _isFinish = isFinish;
    if (_data.isEmpty == true) {
      return const Center(
        child: NoData(),
      );
    }
    return RefreshIndicator(
        onRefresh: _onRefresh,
        child: LoadMore(
          isFinish: _isFinish,
          onLoadMore: _onLoadMore,
          child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 115),
              itemBuilder: (context, index) {
                final item = _data[index];
                return InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {},
                  child: _buildItem(item),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 12);
              },
              itemCount: _data.length),
        ));
  }

  Widget _buildItem(BookingModel item) {
    final type = HistoryReservationType.fromTypeStatus(item.statusId);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.05)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: AppColors.semanticColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'ID: #${item.id}',
                  style: AppTextStyle.captionBold
                      .copyWith(color: const Color(0xff032206)),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white.withOpacity(0.05)),
                child: Row(
                  children: [
                    AppImage.asset(type?.icon, width: 18, color: type?.color),
                    const SizedBox(width: 4),
                    Text(
                      item.statusName ?? '',
                      style: AppTextStyle.smallTextRegular
                          .copyWith(color: type?.color),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Biến động: -${item.deposit?.toCurrency()}',
            style: AppTextStyle.smallTextMedium.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.requestDatetime.toDate('HH:mm:ss dd/MM/yyyy'),
                style:
                    AppTextStyle.smallTextMedium.copyWith(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Chỉ Đường',
                  style: AppTextStyle.smallTextMedium.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<bool> _onLoadMore() async {
    page++;
    _cubit.onLoadReservationHistory(
        page: page, isLoading: false, oldData: _data);
    return true;
  }

  Future<void> _onRefresh() async {
    page = 1;
    _cubit.onLoadReservationHistory(page: page, isLoading: false);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/features/history/cubit/history_cubit.dart';
import 'package:rabbitevc/features/history/cubit/history_state.dart';
import 'package:rabbitevc/features/history/screens/detail_bill_screen.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/models/history/history_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/enums/history_transaction_type.dart';
import 'package:rabbitevc/share/extensions/date_time.dart';
import 'package:rabbitevc/share/extensions/num.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_card_box.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';
import 'package:rabbitevc/widget/error_try_again.dart';
import 'package:rabbitevc/widget/load_more.dart';
import 'package:rabbitevc/widget/no_data.dart';

class HistoryTransactionView extends StatefulWidget {
  const HistoryTransactionView({Key? key}) : super(key: key);

  @override
  State<HistoryTransactionView> createState() => _HistoryTransactionViewState();
}

class _HistoryTransactionViewState extends State<HistoryTransactionView>
    with AutomaticKeepAliveClientMixin {
  HistoryCubit get _cubit => BlocProvider.of(context);
  List<HistoryModel> _data = List.from([]);
  bool? _isFinish;
  int page = 1;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _cubit.onLoadTransactionHistory();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<HistoryCubit, HistoryState>(
            builder: (_, state) {
              return state.maybeWhen(
                  orElse: _buildLoading,
                  loading: _buildLoading,
                  error: _buildErrorWidget,
                  historyTransactionLogged: _buildListHistory);
            },
          ),
        )
      ],
    );
  }

  Future<bool> _onLoadMore() async {
    page++;
    _cubit.onLoadTransactionHistory(
        page: page, isLoading: false, oldData: _data);
    return true;
  }

  Future<void> _onRefresh() async {
    page = 1;
    _cubit.onLoadTransactionHistory(page: page, isLoading: false);
  }

  Widget _buildErrorWidget(String? error) {
    return Center(child: ErrorTryAgain());
  }

  Widget _buildLoading() => const Center(child: AppCicularIndicator());

  Widget _buildListHistory(List<HistoryModel>? data, bool? isFinish) {
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
            padding: const EdgeInsets.only(top: 16, bottom: 120),
            itemBuilder: (context, index) {
              final item = _data[index];
              return AppCardBox(
                child: _buildItem(item),
              );
            },
            separatorBuilder: (index, _) {
              return const SizedBox(height: 16);
            },
            itemCount: _data.length),
      ),
    );
  }

  Widget _buildItem(HistoryModel item) {
    final type = HistoryTransactionType.fromTypeStatus(item.extra_type);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          if (type == HistoryTransactionType.payBill) {
            pushNamed(DetailBillScreen.route, arguments: {'historyId': item.extra_id});
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              SvgPicture.asset(
                type?.icon ?? '',
                width: 24,
              ),
              const SizedBox(width: 16),
              Container(
                height: 40,
                width: 1,
                color: GreyColor.grey600,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type?.title ?? '',
                      style:
                          AppTextStyle.bodyMedium.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.point_datetime?.toDateLocale('HH:mm:ss dd/MM/yyyy') ?? '',
                      style: AppTextStyle.smallTextRegular
                          .copyWith(color: GreyColor.grey600),
                    )
                  ],
                ),
              ),
              Text(
                (item.point_value ?? 0).toCurrency() ?? '',
                style: AppTextStyle.largeTextBold.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

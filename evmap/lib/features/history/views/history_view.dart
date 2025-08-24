import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/booking/cubit/booking_cubit.dart';
import 'package:rabbitevc/features/booking/views/booking_history.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/history/cubit/history_cubit.dart';
import 'package:rabbitevc/features/history/views/history_transaction_view.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';
import 'package:rabbitevc/widget/appbar.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: BaseAppBar(
        automaticallyImplyLeading: false,
        title: S.text?.history ?? '',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildTabBar(),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                BlocProvider<HistoryCubit>(
                    create: (context) => HistoryCubit(),
                    child: const HistoryTransactionView()),
                const SizedBox.shrink(),
                BlocProvider<BookingCubit>(
                    create: (context) => BookingCubit(),
                    child: const BookingHistory()),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.10),
        borderRadius: BorderRadius.circular(
          100.0,
        ),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25.0,
          ),
          color: AppColors.primaryColor,
        ),
        labelColor: const Color(0xff042919),
        labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        unselectedLabelColor: const Color(0xff889C93),
        unselectedLabelStyle:
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        tabs: [
          Tab(
            text: S.text?.history_transaction ?? '',
          ),
          Tab(
            text: S.text?.history_charge_car ?? '',
          ),
          Tab(
            text: S.text?.history_reservation_deposit,
          ),
        ],
      ),
    );
  }
}

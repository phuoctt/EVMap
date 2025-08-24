import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_cubit.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_type_cubit.dart';
import 'package:rabbitevc/features/dashboard/views/popup_filter.dart';
import 'package:rabbitevc/features/dashboard/widgets/header_search_station.dart';
import 'package:rabbitevc/features/dashboard/widgets/list_search_station.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/service/di/di.dart';
import 'package:rabbitevc/service/local_storage/local_storage_service.dart';
import 'package:rabbitevc/share/enums/station_status_type.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';
import 'package:rabbitevc/widget/app_scaffold.dart';
import 'package:rabbitevc/widget/no_data.dart';
import 'package:rabbitevc/widget/unfocus.dart';

class SearchStationScreen extends StatefulWidget {
  final List<ChargeStationModel>? data;
  final ValueNotifier<FilterSearchModel> filterModel;

  static const route = '/search_station';

  const SearchStationScreen({
    super.key,
    this.data,
    required this.filterModel,
  });

  @override
  State<SearchStationScreen> createState() => _SearchStationScreenState();
}

class _SearchStationScreenState extends State<SearchStationScreen> {
  late List<ChargeStationModel> _data;

  ChargeStationCubit get _cubit => BlocProvider.of(context);

  ChargeTypeCubit get _chargeTypeCubit => BlocProvider.of(context);

  String? keyword;

  @override
  void initState() {
    _data = List.from(widget.data ?? []);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _onLoadSearchHistory();
      _chargeTypeCubit.onLoadChargeType();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onSearchStation() async {
    final position = await AppUtils.getPosition();
    _cubit.onLoadCharStation(
        lat: position?.latitude,
        long: position?.longitude,
        keyword: keyword,
        statusId: widget.filterModel.value.status?.type,
        typeId: widget.filterModel.value.chargeTypeModel?.id);
  }

  void _onLoadSearchHistory() {
    _cubit.onLoadSearchHistory(getHistorySearch());
  }

  @override
  Widget build(BuildContext context) {
    return UnFocus(
      child: AppScaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ValueListenableBuilder<FilterSearchModel>(
                  valueListenable: widget.filterModel,
                  builder: (context, value, _) {
                    return HeaderSearchStation(
                      activeFilter: value.status != StationStatusType.all ||
                          value.chargeTypeModel?.id != null,
                      onSearch: _onSearch,
                      onTapFilter: _showFilterPopup,
                    );
                  },
                ),
                BlocBuilder<ChargeStationCubit, ChargeStationState>(
                  builder: (_, state) {
                    String? text = S.text?.station_result_search;

                    state.whenOrNull(logged: (_, b) {
                      text = S.text?.station_result_search;
                    }, searchHistoryLogged: (_) {
                      text = S.text?.station_history_search;
                    });
                    return Text(
                      text ?? '',
                      style:
                          AppTextStyle.bodyMedium.copyWith(color: Colors.white),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Expanded(
                    child: BlocBuilder<ChargeStationCubit, ChargeStationState>(
                  builder: (_, state) {
                    return state.maybeWhen(
                        orElse: () => const AppCicularIndicator(),
                        logged: _buildListSearch,
                        searchHistoryLogged: (val) =>
                            _buildListSearch(val, null));
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showFilterPopup() async {
    final result = await PopupFilter.show(
        cubit: _chargeTypeCubit, data: widget.filterModel.value);
    if (result != null && result is FilterSearchModel) {
      widget.filterModel.value = result;
      _onSearchStation();
    }
  }

  Widget _buildListSearch(List<ChargeStationModel> data, bool? isFinish) {
    if (data.isNotEmpty) {
      return ListSearchStation(
        data: data,
        onTap: (val) {
          pop(val);
          addSearchHistory(val);
        },
      );
    } else {
      return const NoData();
    }
  }

  List<ChargeStationModel> getHistorySearch() {
    LocalStorageService storage = getIt.get<LocalStorageService>();
    final j = storage.getString(LocalStorageKey.historySearch.name);
    List<ChargeStationModel> data = List.from([]);

    if (j?.isNotEmpty ?? false) {
      Iterable l = json.decode(j!);
      data = List<ChargeStationModel>.from(
          l.map((model) => ChargeStationModel.fromJson(model)));
    }
    return data;
  }

  void addSearchHistory(ChargeStationModel value) {
    final data = getHistorySearch();
    data.add(value);
    data
      ..removeWhere((e) => e == value)
      ..insert(0, value);
    if (data.length > 10) {
      data.removeRange(10, data.length);
    }
    getIt
        .get<LocalStorageService>()
        .setString(LocalStorageKey.historySearch.name, json.encode(data));
  }

  void _onSearch(String text) {
    keyword = text;
    if (text.isEmpty) {
      _onLoadSearchHistory();
    } else {
      _onSearchStation();
    }
  }
}

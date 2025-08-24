import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_station_state.dart';
import 'package:rabbitevc/features/charge_station/cubit/charge_type_cubit.dart';
import 'package:rabbitevc/features/dashboard/widgets/filter_checkbox_title.dart';
import 'package:rabbitevc/models/charge_station/charge_type_model.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/enums/station_status_type.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';
import 'package:rabbitevc/widget/app_outlined_button.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class PopupFilter extends StatefulWidget {
  final FilterSearchModel? data;

  const PopupFilter({
    super.key,
    this.data,
  });

  static Future<T?> show<T>(
          {required ChargeTypeCubit cubit, FilterSearchModel? data}) =>
      showModalBottomSheet(
        context: navigatorKey.currentContext!,
        backgroundColor: GreyColor.grey800,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        builder: (BuildContext context) {
          return BlocProvider.value(
            value: cubit,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.92,
                child: PopupFilter(data: data)),
          );
        },
      );

  @override
  State<PopupFilter> createState() => _PopupFilterState();
}

class _PopupFilterState extends State<PopupFilter> {
  late StationStatusType status;
  final chargeModelAll = ChargeTypeModel(name: S.text?.text_all);
  late ChargeTypeModel chargeTypeModel;

  @override
  void initState() {
    chargeTypeModel = widget.data?.chargeTypeModel ?? chargeModelAll;
    status = widget.data?.status ?? StationStatusType.all;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(bottom: 16),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Text(
              'Bộ lọc',
              style: AppTextStyle.largeTextBold.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    BlocBuilder<ChargeTypeCubit, ChargeStationState>(
                      builder: (_, state) {
                        return state.maybeWhen(
                            orElse: () => const AppCicularIndicator(),
                            loggedChargeTypes: _buildType);
                      },
                    ),
                    const SizedBox(height: 10),
                    _buildStatusType(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            _rowButton()
          ],
        ),
      ),
    );
  }

  Widget _rowButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: AppOutLinedButton.large(
              height: 56,
              width: double.infinity,
              color: AppColors.primaryColor,
              title: S.text?.station_button_reset,
              style: AppTextStyle.bodyMedium
                  .copyWith(color: AppColors.primaryColor),
              onPressed: _onReset,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: AppButton(
              height: 56,
              width: double.infinity,
              title: S.text?.station_button_apply,
              style: AppTextStyle.bodyMedium.copyWith(color: GreyColor.grey800),
              onPressed: _onSubmit,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStatusType() {
    const data = StationStatusType.values;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Trạng thái trạm sạc',
            style: AppTextStyle.bodyMedium
                .copyWith(color: Colors.white, fontSize: 15),
          ),
        ),
        const SizedBox(height: 6),
        SeparatedColumn(
          children: data
              .map((e) => FilterCheckBoxTitle(
                    value: e == status,
                    title: e.title,
                    onChanged: (b) {
                      setState(() {
                        status = e;
                      });
                    },
                  ))
              .toList(),
          separatorBuilder: () => const SizedBox(height: 3),
        ),
      ],
    );
  }

  Widget _buildType(List<ChargeTypeModel> data) {
    List<ChargeTypeModel> list = List.from(data)..insert(0, chargeModelAll);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Trạng thái trạm sạc',
            style: AppTextStyle.bodyMedium
                .copyWith(color: Colors.white, fontSize: 15),
          ),
        ),
        const SizedBox(height: 6),
        SeparatedColumn(
          children: list
              .map((e) => FilterCheckBoxTitle(
                    value: e.id == chargeTypeModel.id,
                    title: e.name,
                    onChanged: (b) {
                      setState(() {
                        chargeTypeModel = e;
                      });
                    },
                  ))
              .toList(),
          separatorBuilder: () => const SizedBox(height: 3),
        ),
      ],
    );
  }

  void _onReset() {
    setState(() {
      status = StationStatusType.all;
      chargeTypeModel = chargeModelAll;
    });
  }

  void _onSubmit() {
    pop(FilterSearchModel(status: status, chargeTypeModel: chargeTypeModel));
  }
}

class FilterSearchModel {
  StationStatusType? status;
  ChargeTypeModel? chargeTypeModel;

  FilterSearchModel({this.status, this.chargeTypeModel});
}

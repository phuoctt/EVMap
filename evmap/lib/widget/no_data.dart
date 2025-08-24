import 'package:flutter/material.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/style.dart';
class NoData extends StatelessWidget {
  final VoidCallback? onRefresh;

  final String? text;
  final GlobalKey<RefreshIndicatorState>? keyRefresh;

  const NoData({Key? key, this.onRefresh, this.keyRefresh, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return onRefresh != null
        ? _buildNoDataRefresh(context)
        : _buildNoData(context);
  }

  Widget _buildNoDataRefresh(BuildContext context) {
    return RefreshIndicator(
      key: keyRefresh,
      child: Stack(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                text ?? S.text?.text_no_data ?? '',
                textAlign: TextAlign.center,
                style: AppTextStyle.bodyMedium.copyWith(color: Colors.grey),
              ),
            ),
          ),
          ListView()
        ],
      ),
      onRefresh: () async {
        onRefresh?.call();
      },
    );
  }

  Widget _buildNoData(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          text ?? S.text?.text_no_data ?? '',
          textAlign: TextAlign.center,
          style: AppTextStyle.bodyMedium.copyWith(color: Colors.grey),
        ),
      ),
    );
  }
}

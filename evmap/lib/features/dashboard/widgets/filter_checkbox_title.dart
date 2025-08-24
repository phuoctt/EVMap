import 'package:flutter/material.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';

class FilterCheckBoxTitle extends StatelessWidget {
  final String? title;
  final ValueChanged<bool?>? onChanged;
  final bool? value;

  const FilterCheckBoxTitle({
    super.key,
    this.value,
    this.title,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged?.call(!(value ?? false));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(6, 0, 16, 0),
        child: Row(
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                unselectedWidgetColor: GreyColor.grey700,
              ),
              child: Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                value: value,
                onChanged: onChanged,
                activeColor: AppColors.primaryColor,
              ),
            ),
            Text(
              title ?? '',
              style: AppTextStyle.bodyLight.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

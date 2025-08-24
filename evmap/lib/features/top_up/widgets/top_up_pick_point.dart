import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:rabbitevc/share/extensions/num.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/fonts.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_card_box.dart';
import 'package:rabbitevc/widget/unfocus.dart';

class TopUpPickPoint extends StatefulWidget {
  final ValueChanged<num>? onChanged;

  const TopUpPickPoint({
    super.key,
    this.onChanged,
  });

  @override
  State<TopUpPickPoint> createState() => _TopUpPickPointState();
}

class _TopUpPickPointState extends State<TopUpPickPoint> {
  int selectIndex = -1;
  List<num> points = [
    10000,
    20000,
    50000,
    100000,
    200000,
    300000,
    500000,
    1000000
  ];
  late TextEditingController controller;

  @override
  void initState() {
    selectIndex = 3;
    controller = TextEditingController(text: points[selectIndex].toCurrency());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      widget.onChanged?.call(points[selectIndex]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppCardBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.text?.top_up_select_score ?? '',
              style: AppTextStyle.smallTextMedium.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IntrinsicWidth(
                    child: TextField(
                      controller: controller,
                      onChanged: (text) {
                        try {
                          final amount = num.parse(text.replaceAll(',', ''));
                          final index =
                              points.indexWhere((element) => element == amount);
                          if (index >= 0) {
                            setState(() {
                              selectIndex = index;
                              widget.onChanged?.call(points[selectIndex]);
                            });
                          } else {
                            widget.onChanged?.call(amount);
                            if (selectIndex == -1) {
                              return;
                            }
                            setState(() {
                              selectIndex = -1;
                              widget.onChanged?.call(amount);
                            });
                          }
                        } catch (e) {}
                      },
                      inputFormatters: [
                        NumericTextFormatter(),
                      ],
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          fontFamily: AppFonts.beVietnamPro,
                          fontSize: 36,
                          color: AppColors.semanticColor,
                          fontWeight: FontWeight.w600,
                          height: 48 / 36),
                      // obscureText: true,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '0',
                          hintStyle: TextStyle(
                              fontFamily: AppFonts.beVietnamPro,
                              fontSize: 36,
                              color: AppColors.semanticColor,
                              fontWeight: FontWeight.w600,
                              height: 48 / 36)),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(S.text?.top_up_score ?? '',
                      style: AppTextStyle.largeTextMedium
                          .copyWith(color: Colors.white))
                ],
              ),
            ),
            // Center(
            //   child: RichText(
            //     text: TextSpan(
            //       text: '${points[selectIndex].toCurrency()} ',
            //       style: const TextStyle(
            //           fontFamily: AppFonts.beVietnamPro,
            //           fontSize: 36,
            //           color: AppColors.semanticColor,
            //           fontWeight: FontWeight.w600,
            //           height: 48 / 36),
            //       children: <TextSpan>[
            //         TextSpan(
            //             text: S.text?.top_up_score,
            //             style: AppTextStyle.largeTextMedium
            //                 .copyWith(color: Colors.white)),
            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(height: 8),
            SizedBox(height: 36, child: _buildListPoint())
          ],
        ),
      ),
    );
  }

  Widget _buildListPoint() {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          bool select = index == selectIndex;
          final item = points[index];
          return GestureDetector(
            onTap: () => setState(() {
              if (primaryFocus != null) primaryFocus!.unfocus();
              selectIndex = index;
              controller.text = points[selectIndex].toCurrency() ?? '';
              widget.onChanged?.call(points[selectIndex]);
            }),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      width: 1,
                      color: select ? Colors.white : Colors.transparent),
                  color: Colors.white.withOpacity(0.05)),
              child: Center(
                  child: Text(
                item.toCurrency() ?? '',
                style: AppTextStyle.bodyLight.copyWith(
                  color: select ? Colors.white : const Color(0xff9AA79B),
                ),
              )),
            ),
          );
        },
        separatorBuilder: (index, context) {
          return const SizedBox(width: 12);
        },
        itemCount: points.length);
  }
}

class NumericTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    } else if (newValue.text.compareTo(oldValue.text) != 0) {
      final int selectionIndexFromTheRight =
          newValue.text.length - newValue.selection.end;
      final f = NumberFormat("#,###");
      final number =
          int.parse(newValue.text.replaceAll(f.symbols.GROUP_SEP, ''));
      final newString = f.format(number);
      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(
            offset: newString.length - selectionIndexFromTheRight),
      );
    } else {
      return newValue;
    }
  }
}

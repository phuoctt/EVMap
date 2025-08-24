import 'package:flutter/material.dart';
import 'package:rabbitevc/share/enums/home_menu_type.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_image.dart';

class HomeMenu extends StatelessWidget {
  final ValueChanged<HomeMenuType>? onTap;

  const HomeMenu({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const data = HomeMenuType.values;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.05)),
      child: GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 90,
          ),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            final item = data[index];
            return Material(
              color: Colors.transparent,
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                onTap: () => onTap?.call(item),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppImage.asset(item.icon, height: 32),
                    const SizedBox(height: 6),
                    Text(
                      item.title ?? '',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.smallTextRegular
                          .copyWith(color: GreyColor.grey2),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

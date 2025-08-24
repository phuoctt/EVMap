import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_image.dart';

class HeaderSearchStation extends StatefulWidget {
  final ValueChanged<String>? onSearch;
  final GestureTapCallback? onTapFilter;
  final bool? activeFilter;

  const HeaderSearchStation(
      {super.key, this.onSearch, this.onTapFilter, this.activeFilter});

  @override
  State<HeaderSearchStation> createState() => _HeaderSearchStationState();
}

class _HeaderSearchStationState extends State<HeaderSearchStation> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          InkWell(
            onTap: pop,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.05)),
              child: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.white),
                  color: Colors.white.withOpacity(0.05)),
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      // autofocus: true,
                      onChanged: _onSearchChanged,
                      style:
                          AppTextStyle.bodyLight.copyWith(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: S.text?.station_search_hint_text ?? '',
                        hintStyle: AppTextStyle.bodyLight
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.search, color: Colors.white),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ),
          const SizedBox(width: 24),
          InkWell(
            onTap: widget.onTapFilter,
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white.withOpacity(0.05)),
                  child: AppImage.asset(IcSvg.icFilter),
                ),
                if (widget.activeFilter == true)
                  Positioned(
                      top: 10,
                      right: 6,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.semanticColor),
                      ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      widget.onSearch?.call(query);
    });
  }
}

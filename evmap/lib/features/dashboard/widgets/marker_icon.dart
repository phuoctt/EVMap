import 'package:flutter/material.dart';
import 'package:rabbitevc/theme/colors.dart';

class MarkerIcon extends StatelessWidget {
  final bool isSelected;
  const MarkerIcon({super.key,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(width: 0.5, color: GreyColor.grey600)),
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: isSelected
                  ? [Colors.red, Colors.orange]
                  : [const Color(0xFF0D6C41), const Color(0xFF20B66F)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(width: 0.5, color: GreyColor.grey600)),
        child: const Icon(
          Icons.ev_station_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}

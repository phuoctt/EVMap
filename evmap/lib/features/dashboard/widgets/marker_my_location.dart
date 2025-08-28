import 'package:flutter/material.dart';
import 'package:rabbitevc/theme/colors.dart';

class MarkerMyLocation extends StatelessWidget {
  const MarkerMyLocation({super.key});

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
              colors: [Colors.grey.shade900, Colors.grey.shade400],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(width: 0.5, color: GreyColor.grey600)),
        child: const Icon(
          Icons.my_location,
          size: 22,
          color: Colors.white,
        ),
      ),
    );
  }
}

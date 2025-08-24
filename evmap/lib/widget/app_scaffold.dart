import 'package:flutter/material.dart';
import 'package:rabbitevc/generated_images.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? child;
  final PreferredSizeWidget? appBar;

  const AppScaffold({Key? key, this.body, this.child, this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(IcPng.imageBackgroundApp),
          fit: BoxFit.cover,
        ),
      ),
      child: child ??
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar,
            body: body,
          ),
    );
  }
}

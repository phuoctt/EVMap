import 'package:flutter/material.dart';

class RippleAnimationCharging extends StatefulWidget {
  const RippleAnimationCharging({Key? key}) : super(key: key);

  @override
  State<RippleAnimationCharging> createState() =>
      _RippleAnimationChargingState();
}

class _RippleAnimationChargingState extends State<RippleAnimationCharging>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0.5,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: _buildBody());
  }

  Widget _buildBody() {
    return AnimatedBuilder(
      animation:
          CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
      builder: (context, child) {
        double value = 1;
        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            _buildContainer(150 * value),
            _buildContainer(200 * value),
            _buildContainer(250 * value),
            _buildContainer(300 * value),
            _buildContainer(350 * value),
          ],
        );
      },
    );
  }

  Widget _buildContainer(double radius) {
    return Container(
      width: radius,
      height: radius / 2,
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.all(Radius.elliptical(radius, radius / 2)),
        color: Color(0xff1BF698).withOpacity(1 - _controller.value),
      ),
    );
  }
}

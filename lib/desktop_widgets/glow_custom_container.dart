import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class GlowCustomContainer extends StatelessWidget {
  const GlowCustomContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 35, right: 20, top: 40),
      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
              color: const Color(0xFF6EABFE).withOpacity(0.5),
              blurRadius: 14.90, //42.49,
              offset: const Offset(0, 0),
              spreadRadius: 1,
              blurStyle: BlurStyle.outer),
        ],
        gradient: LinearGradient(colors: [
          const Color(0xFFA1D8FF).withOpacity(0.4),
          const Color(0xFFD1B6FF).withOpacity(0.5)
        ]),
        shape: const GradientBoxBorder(
          width: 2,
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [
                Color(0xFF5FBCFF),
                Color(0xFFA471FB),
              ]),
        ),
      ),
      child: child,
    );
  }
}

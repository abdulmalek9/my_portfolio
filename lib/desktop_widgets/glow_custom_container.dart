import 'package:flutter/material.dart';
import 'package:my_portfolio/custom_container.dart';

class GlowCustomContainer extends StatelessWidget {
  const GlowCustomContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        shadows: [
          BoxShadow(
            color: Color(0xFF6EABFE),
            blurRadius: 14.90,
            offset: Offset(0, 0),
            spreadRadius: 5,
          ),
        ],
        shape: Border(),
      ),
      child: CustomContainer(child: child),
    );
  }
}

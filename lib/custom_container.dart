import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 35, right: 20, top: 40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: GradientBoxBorder(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFFE7E7E7),
                  const Color(0xFF6C8EC1).withOpacity(0)
                ]),
            width: 2,
          ),
          gradient: LinearGradient(colors: [
            const Color(0xFF393939).withOpacity(0.8),
            const Color(0xFFAB93D3).withOpacity(0.7),
          ])
          // image: const DecorationImage(
          //   opacity: 0.7,
          //   image: AssetImage(Assets.imagesCustomContainer),
          // ),
          ),
      child: child,
    );
  }
}

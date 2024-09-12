import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_images.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child, required this.ratio});
  final Widget child;
  final double ratio;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: ratio,
      child: Container(
        padding: const EdgeInsets.only(left: 35, right: 20, top: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: const DecorationImage(
            fit: BoxFit.fill,
            opacity: 0.7,
            image: AssetImage(Assets.imagesCustomContainer),
          ),
        ),
        child: child,
      ),
    );
  }
}

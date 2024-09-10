import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class ResumeContainer extends StatelessWidget {
  const ResumeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 28, maxWidth: 100),
        child: AspectRatio(
          aspectRatio: 3.18,
          child: Container(
            decoration: ShapeDecoration(
              color: const Color(0xFF050C13),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 0.54,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0xFF5FBCFF),
                ),
                borderRadius: BorderRadius.circular(3.22),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0xFF6EABFE),
                  blurRadius: 12.90,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: Text(
                "Resume",
                style: AppStyles.styleRegular14(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
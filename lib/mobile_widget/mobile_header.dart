import 'package:flutter/material.dart';
import 'package:my_portfolio/mobile_widget/resume_container.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  static List headerItem = ["About", "Services", "Projects"];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const FlutterLogo(),
        const SizedBox(
          width: 48,
        ),
        for (int i = 0; i < headerItem.length; i++)
          Text(
            headerItem[i],
            style: AppStyles.styleRegular14(context),
          ),
        const SizedBox(
          width: 16,
        ),
        const ResumeContainer()
      ],
    );
  }
}

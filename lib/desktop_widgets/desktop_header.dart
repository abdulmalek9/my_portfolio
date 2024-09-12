import 'package:flutter/material.dart';
import 'package:my_portfolio/mobile_widget/resume_container.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});
  static List headerItem = ["About", "Services", "Projects"];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Image.asset(width: 85, height: 85, Assets.imagesMyLogo04),
        ),
        const Spacer(
          flex: 10,
        ),
        for (int i = 0; i < headerItem.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Text(
              headerItem[i],
              style: AppStyles.styleRegular14(context),
            ),
          ),
        const SizedBox(
          width: 16,
        ),
        const ResumeContainer()
      ],
    );
  }
}

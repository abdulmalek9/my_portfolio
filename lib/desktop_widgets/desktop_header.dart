import 'package:flutter/material.dart';
import 'package:my_portfolio/mobile_widget/resume_container.dart';
import 'package:my_portfolio/provider/scroller_provider.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:my_portfolio/utils/app_styles.dart';
import 'package:provider/provider.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});
  static List headerItem = ["About", "Services", "Projects"];

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Row(
        children: [
          Flexible(
            child: Image.asset(width: 85, height: 85, Assets.imagesMyLogo04),
          ),
          const Spacer(
            flex: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: () {
                context.read<ScrollerProvider>().changePageIndex(
                    context.read<ScrollerProvider>().aboutSectionKey);
              },
              child: Text(
                headerItem[0],
                style: AppStyles.styleRegular14(context),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: () {
                context.read<ScrollerProvider>().changePageIndex(
                    context.read<ScrollerProvider>().serviceSectionKey);
              },
              child: Text(
                headerItem[1],
                style: AppStyles.styleRegular14(context),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: () {
                context.read<ScrollerProvider>().changePageIndex(
                    context.read<ScrollerProvider>().projectSectionKey);
              },
              child: Text(
                headerItem[2],
                style: AppStyles.styleRegular14(context),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const ResumeContainer()
        ],
      ),
    );
  }
}

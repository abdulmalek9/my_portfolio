import 'package:flutter/material.dart';
import 'package:my_portfolio/custom_container.dart';
import 'package:my_portfolio/desktop_widgets/desktop_header.dart';
import 'package:my_portfolio/mobile_widget/personal_info_card.dart';
import 'package:my_portfolio/utils/app_images.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: DesktopHeader(),
        ),
        SizedBox(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.only(left: 95.0),
            child: Stack(
              children: [
                Positioned(
                  left: MediaQuery.sizeOf(context).width -
                      (MediaQuery.sizeOf(context).width - 480),
                  top: 34,
                  child:
                      Image.asset(width: 686, height: 350, Assets.imagesIntro),
                ),
                Positioned(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxHeight: 375, maxWidth: 686),
                      child: const AspectRatio(
                        aspectRatio: 686 / 375,
                        child: CustomContainer(
                          ratio: 686 / 375,
                          child: PersonalInfoCard(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/mobile_widget/mobile_header.dart';
import 'package:my_portfolio/mobile_widget/personal_info_card.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: ListView(
        children: const [
          Expanded(child: MobileHeader()),
          SizedBox(height: 20),
          CustomContainer(),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 330 / 180,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: AssetImage(Assets.imagesCustomContainer),
            ),
          ),
          child: const PersonalInfoCard(),
        ),
      ),
    );
  }
}

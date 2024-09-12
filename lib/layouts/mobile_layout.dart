import 'package:flutter/material.dart';
import 'package:my_portfolio/custom_container.dart';
import 'package:my_portfolio/mobile_widget/mobile_header.dart';
import 'package:my_portfolio/mobile_widget/personal_info_card.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: ListView(
        children: const [
          MobileHeader(),
          SizedBox(height: 20),
          CustomContainer(
            ratio: 330 / 180,
            child: PersonalInfoCard(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/about_me_row.dart';
import 'package:my_portfolio/mobile_widget/card_mobile_builder.dart';
import 'package:my_portfolio/mobile_widget/mobile_header.dart';
import 'package:my_portfolio/tablet_widgets/about_me_detailes_tablet_widget.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MobileHeader(),
          SizedBox(height: 20),
          CardMobileBuilder(),
          SizedBox(
            height: 100,
          ),
          DeviderRow(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 40),
            text: "About me",
            textPadding: 25,
          ),
          SizedBox(
            height: 70,
          ),
          AboutMeDetailesTabletWidget(horizontalPadding: 55),
          SizedBox(
            height: 80,
          ),
          DeviderRow(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 40),
            text: "What can I do?",
            textPadding: 25,
          ),
          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}

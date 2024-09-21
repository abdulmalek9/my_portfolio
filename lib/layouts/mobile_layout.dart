import 'package:flutter/material.dart';
import 'package:my_portfolio/contact_divider.dart';
import 'package:my_portfolio/desktop_widgets/about_me_row.dart';
import 'package:my_portfolio/get_in_touch.dart';
import 'package:my_portfolio/mobile_widget/card_mobile_builder.dart';
import 'package:my_portfolio/mobile_widget/mobile_header.dart';
import 'package:my_portfolio/mobile_widget/what_can_i_do_mobile_section.dart';
import 'package:my_portfolio/provider/scroller_provider.dart';
import 'package:my_portfolio/tablet_widgets/about_me_detailes_tablet_widget.dart';
import 'package:my_portfolio/tablet_widgets/my_projects_sectoin_tablet.dart';
import 'package:provider/provider.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MobileHeader(),
          const SizedBox(height: 40),
          const CardMobileBuilder(),
          const SizedBox(
            height: 170,
          ),
          // Consumer(
          //   builder: (context, value, child) =>
          // ),
          KeyedSubtree(
            key: context.read<ScrollerProvider>().aboutSectionKey,
            child: const SizedBox(
              height: 20,
            ),
          ),
          const DeviderRow(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 40),
            text: "About me",
            textPadding: 25,
          ),
          const SizedBox(
            height: 40,
          ),
          const AboutMeDetailesTabletWidget(horizontalPadding: 55),
          const SizedBox(
            height: 130,
          ),
          KeyedSubtree(
            key: context.read<ScrollerProvider>().serviceSectionKey,
            child: const SizedBox(
              height: 20,
            ),
          ),
          const DeviderRow(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 40),
            text: "What can I do?",
            textPadding: 25,
          ),
          const SizedBox(
            height: 80,
          ),
          const FittedBox(
            child: WhatCanIDoMobileSection(
              edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 80),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          KeyedSubtree(
            key: context.read<ScrollerProvider>().projectSectionKey,
            child: const SizedBox(
              height: 20,
            ),
          ),
          const DeviderRow(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 40),
            text: "My projects",
            textPadding: 20,
          ),
          const SizedBox(
            height: 80,
          ),
          const FittedBox(child: MyProjectsSectionTablet()),
          const SizedBox(
            height: 40,
          ),
          const ContactDivider(),
          const FittedBox(child: GetInTouch()),
        ],
      ),
    );
  }
}

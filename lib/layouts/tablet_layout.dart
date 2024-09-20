import 'package:flutter/material.dart';
import 'package:my_portfolio/contact_divider.dart';
import 'package:my_portfolio/desktop_widgets/about_me_row.dart';
import 'package:my_portfolio/desktop_widgets/what_can_i_do_section.dart';
import 'package:my_portfolio/get_in_touch.dart';
import 'package:my_portfolio/provider/scroller_provider.dart';
import 'package:my_portfolio/tablet_widgets/about_me_detailes_tablet_widget.dart';
import 'package:my_portfolio/tablet_widgets/card_tablet_builder.dart';
import 'package:my_portfolio/tablet_widgets/header.dart';
import 'package:my_portfolio/tablet_widgets/my_projects_sectoin_tablet.dart';
import 'package:provider/provider.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(),
          const SizedBox(
            height: 25,
          ),
          const CardTabletBuilder(),
          const SizedBox(
            height: 160,
          ),
          Consumer(
            builder: (context, value, child) => KeyedSubtree(
              key: context.read<ScrollerProvider>().aboutSectionKey,
              child: const SizedBox(
                  child: SizedBox(
                height: 20,
              )),
            ),
          ),
          const DeviderRow(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 80),
            text: "About Me",
            textPadding: 30,
          ),
          const SizedBox(
            height: 100,
          ),
          const AboutMeDetailesTabletWidget(),
          const SizedBox(
            height: 80,
          ),
          Consumer(
            builder: (context, value, child) => KeyedSubtree(
              key: context.read<ScrollerProvider>().serviceSectionKey,
              child: const SizedBox(
                height: 20,
              ),
            ),
          ),
          const DeviderRow(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 80),
            text: "What Can I Do?",
            textPadding: 30,
          ),
          const SizedBox(
            height: 120,
          ),
          const WhatCanIDoSection(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 110),
          ),
          const SizedBox(
            height: 140,
          ),
          KeyedSubtree(
              key: context.read<ScrollerProvider>().projectSectionKey,
              child: const SizedBox(
                height: 10,
              )),
          const DeviderRow(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 80),
            text: "My projects",
            textPadding: 30,
          ),
          const SizedBox(
            height: 120,
          ),
          const MyProjectsSectionTablet(),
          const SizedBox(
            height: 80,
          ),
          const ContactDivider(
            padding: 135,
          ),
          const GetInTouch(),
        ],
      ),
    );
  }
}

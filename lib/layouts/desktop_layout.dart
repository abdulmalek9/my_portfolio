import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/about_me_detailes.dart';
import 'package:my_portfolio/desktop_widgets/about_me_row.dart';
import 'package:my_portfolio/desktop_widgets/card_desktop_builder.dart';
import 'package:my_portfolio/desktop_widgets/desktop_header.dart';
import 'package:my_portfolio/desktop_widgets/my_project_section.dart';
import 'package:my_portfolio/desktop_widgets/what_can_i_do_section.dart';
import 'package:my_portfolio/provider/scroller_provider.dart';
import 'package:provider/provider.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: DesktopHeader(),
          ),
          const SizedBox(
            height: 40,
          ),
          const CartDesktopBuilder(),
          const SizedBox(
            height: 140,
          ),
          KeyedSubtree(
            key: context.read<ScrollerProvider>().aboutSectionKey,
            child: const SizedBox(
                child: SizedBox(
              height: 20,
            )),
          ),
          const DeviderRow(
            text: "About Me",
          ),
          const SizedBox(
            height: 100,
          ),
          const AboutMeDetailes(),
          const SizedBox(
            height: 80,
          ),
          KeyedSubtree(
            key: context.read<ScrollerProvider>().about1SectionKey,
            child: const SizedBox(
              height: 20,
            ),
          ),
          const DeviderRow(
            text: "What Can I Do?",
          ),
          const SizedBox(
            height: 120,
          ),
          const WhatCanIDoSection(),
          const SizedBox(
            height: 140,
          ),
          KeyedSubtree(
              key: context.read<ScrollerProvider>().about2SectionKey,
              child: const SizedBox(
                height: 20,
              )),
          const DeviderRow(text: "My projects"),
          const SizedBox(
            height: 90,
          ),
          const MyProjectSection(),
          const SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }
}

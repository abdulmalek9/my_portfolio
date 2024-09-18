import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/about_me_row.dart';
import 'package:my_portfolio/desktop_widgets/what_can_i_do_section.dart';
import 'package:my_portfolio/tablet_widgets/about_me_detailes_tablet_widget.dart';
import 'package:my_portfolio/tablet_widgets/card_tablet_builder.dart';
import 'package:my_portfolio/tablet_widgets/header.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Header(),
          SizedBox(
            height: 40,
          ),
          CardTabletBuilder(),
          SizedBox(
            height: 180,
          ),
          DeviderRow(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 80),
            text: "About Me",
          ),
          SizedBox(
            height: 100,
          ),
          AboutMeDetailesTabletWidget(),
          SizedBox(
            height: 80,
          ),
          DeviderRow(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 80),
            text: "What Can I Do?",
          ),
          SizedBox(
            height: 120,
          ),
          WhatCanIDoSection(
            edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 110),
          ),
          SizedBox(
            height: 140,
          ),
        ],
      ),
    );
  }
}

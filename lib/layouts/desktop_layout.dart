import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/about_me_detailes.dart';
import 'package:my_portfolio/desktop_widgets/about_me_row.dart';
import 'package:my_portfolio/desktop_widgets/card_desktop_builder.dart';
import 'package:my_portfolio/desktop_widgets/desktop_header.dart';
import 'package:my_portfolio/desktop_widgets/my_project_section.dart';
import 'package:my_portfolio/desktop_widgets/what_can_i_do_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: DesktopHeader(),
        ),
        SizedBox(
          height: 40,
        ),
        CartDesktopBuilder(),
        SizedBox(
          height: 160,
        ),
        DeviderRow(
          text: "About Me",
        ),
        SizedBox(
          height: 100,
        ),
        AboutMeDetailes(),
        SizedBox(
          height: 100,
        ),
        DeviderRow(
          text: "What Can I Do?",
        ),
        SizedBox(
          height: 120,
        ),
        WhatCanIDoSection(),
        SizedBox(
          height: 200,
        ),
        DeviderRow(text: "My projects"),
        SizedBox(
          height: 90,
        ),
        MyProjectSection()
      ],
    );
  }
}

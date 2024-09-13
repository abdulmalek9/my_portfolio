import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/about_me_row.dart';
import 'package:my_portfolio/desktop_widgets/card_desktop_builder.dart';
import 'package:my_portfolio/desktop_widgets/desktop_header.dart';
import 'package:my_portfolio/utils/app_styles.dart';

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
        AboutMeRow(),
        SizedBox(
          height: 100,
        ),
      ],
    );
  }
}

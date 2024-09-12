import 'package:flutter/material.dart';
import 'package:my_portfolio/adaptive_layout.dart';
import 'package:my_portfolio/layouts/desktop_layout.dart';
import 'package:my_portfolio/layouts/mobile_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff050C13),
      body: AdaptiveLayout(
        mobileWidget: (context) => const MobileLayout(),
        tabletWidget: (context) => const SizedBox(),
        desktopWidgt: (context) => const DesktopLayout(),
      ),
    );
  }
}

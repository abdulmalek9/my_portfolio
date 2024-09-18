import 'package:flutter/material.dart';
import 'package:my_portfolio/adaptive_layout.dart';
import 'package:my_portfolio/layouts/desktop_layout.dart';
import 'package:my_portfolio/layouts/mobile_layout.dart';
import 'package:my_portfolio/layouts/tablet_layout.dart';
import 'package:my_portfolio/provider/project_index_provider.dart';
import 'package:my_portfolio/provider/scroller_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff050C13),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ProjectIndexProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => ScrollerProvider(),
          ),
        ],
        child: AdaptiveLayout(
          mobileWidget: (context) => const MobileLayout(),
          tabletWidget: (context) => MultiProvider(providers: [
            ChangeNotifierProvider(
              create: (context) => ProjectIndexProvider(),
            ),
          ], child: const TabletLayout()),
          desktopWidgt: (context) => const DesktopLayout(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/adaptive_layout.dart';
import 'package:my_portfolio/custom_drawer.dart';
import 'package:my_portfolio/layouts/desktop_layout.dart';
import 'package:my_portfolio/layouts/mobile_layout.dart';
import 'package:my_portfolio/layouts/tablet_layout.dart';
import 'package:my_portfolio/provider/project_index_provider.dart';
import 'package:my_portfolio/provider/scroller_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProjectIndexProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ScrollerProvider(),
        ),
      ],
      child: Consumer(
        builder: (context, value, child) => Scaffold(
          key: Provider.of<ScrollerProvider>(context).scaffoldKey,
          endDrawer: CustomDrawer(
            scafoldContext: context,
          ),
          backgroundColor: const Color(0xff050C19),
          body: AdaptiveLayout(
            mobileWidget: (context) => const MobileLayout(),
            tabletWidget: (context) => MultiProvider(providers: [
              ChangeNotifierProvider(
                create: (context) => ProjectIndexProvider(),
              ),
            ], child: const TabletLayout()),
            desktopWidgt: (context) => const DesktopLayout(),
          ),
        ),
      ),
    );
  }
}

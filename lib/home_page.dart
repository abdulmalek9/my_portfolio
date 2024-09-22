import 'package:abdulmalek_alkhatib/desktop_widgets/desktop_header.dart';
import 'package:abdulmalek_alkhatib/mobile_widget/mobile_header.dart';
import 'package:abdulmalek_alkhatib/tablet_widgets/header.dart';
import 'package:abdulmalek_alkhatib/utils/app_images.dart';
import 'package:abdulmalek_alkhatib/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/adaptive_layout.dart';
import 'package:abdulmalek_alkhatib/custom_drawer.dart';
import 'package:abdulmalek_alkhatib/layouts/desktop_layout.dart';
import 'package:abdulmalek_alkhatib/layouts/mobile_layout.dart';
import 'package:abdulmalek_alkhatib/layouts/tablet_layout.dart';
import 'package:abdulmalek_alkhatib/provider/project_index_provider.dart';
import 'package:abdulmalek_alkhatib/provider/scroller_provider.dart';
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
          appBar: AppBar(
            forceMaterialTransparency: true,
            titleSpacing: 25,
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(width: 60, height: 60, Assets.imagesMyLogo04),
            ),
            centerTitle: false,
            elevation: 0,
            actions: [
              MediaQuery.sizeOf(context).width >= SizeConfig.desktopPoint
                  ? const DesktopHeader()
                  : MediaQuery.sizeOf(context).width >= SizeConfig.tabletPoint
                      ? const Header()
                      : const MobileHeader(),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
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

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}

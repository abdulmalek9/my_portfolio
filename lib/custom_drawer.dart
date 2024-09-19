import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/scroller_provider.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:my_portfolio/utils/app_styles.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, this.scafoldContext});
  final BuildContext? scafoldContext;
  static List headerItem = ["About", "Services", "Projects"];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color(0xff050C13),
        child: Consumer<ScrollerProvider>(
          builder: (context, value, child) => Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                Assets.imagesMyLogo04,
                width: 200,
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: GestureDetector(
                  onTap: () {
                    // Provider.of<ScrollerProvider>(context).changePageIndex(
                    //     Provider.of<ScrollerProvider>(context).aboutSectionKey);

                    scafoldContext!
                        .read<ScrollerProvider>()
                        .changePageIndexDrawer(scafoldContext!
                            .read<ScrollerProvider>()
                            .aboutSectionKey);
                    Navigator.pop(context);
                  },
                  child: DrawerItem(
                    headerItem: headerItem[0],
                    iconData: Icons.person,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: GestureDetector(
                  onTap: () {
                    context.read<ScrollerProvider>().changePageIndexDrawer(
                        context.read<ScrollerProvider>().serviceSectionKey);
                  },
                  child: DrawerItem(
                    headerItem: headerItem[1],
                    iconData: Icons.work_rounded,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: GestureDetector(
                  onTap: () {
                    // Provider.of<ScrollerProvider>(context)
                    //     .changePageIndexDrawer(
                    //         Provider.of<ScrollerProvider>(context)
                    //             .projectSectionKey);
                    context
                        .read<ScrollerProvider>()
                        .scaffoldKey
                        .currentState!
                        .closeEndDrawer();
                    context.read<ScrollerProvider>().changePageIndexDrawer(
                        context.read<ScrollerProvider>().projectSectionKey);
                  },
                  child: DrawerItem(
                    headerItem: headerItem[2],
                    iconData: Icons.build_rounded,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                textAlign: TextAlign.center,
                "Created By:\nAbdulmalek Al-Khatib",
                style: AppStyles.styleLight10(context),
              ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ));
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.headerItem,
    this.iconData,
  });

  final String headerItem;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80, right: 16.0),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        // const Spacer(
        //   flex: 2,
        // ),
        Text(
          headerItem,
          textAlign: TextAlign.start,
          style: AppStyles.styleMedium14(context, 20),
        ),
      ],
    );
  }
}

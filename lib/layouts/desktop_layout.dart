import 'package:abdulmalek_alkhatib/contact_divider.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/about_me_detailes.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/about_me_row.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/card_desktop_builder.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/my_project_section.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/what_can_i_do_section.dart';
import 'package:abdulmalek_alkhatib/get_in_touch.dart';
import 'package:abdulmalek_alkhatib/provider/scroller_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // controller: context.read<ScrollerProvider>().scrollController,
        children: [
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 16.0),
          //   child: DesktopHeader(),
          // ),
          const SizedBox(
            height: 40,
          ),
          const CartDesktopBuilder(),
          const SizedBox(
            height: 188,
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
            text: "About Me",
          ),
          const SizedBox(
            height: 100,
          ),
          const AboutMeDetailes(),
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
              key: context.read<ScrollerProvider>().projectSectionKey,
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
          const ContactDivider(
            padding: 150,
          ),
          const GetInTouch(),
        ],
      ),
    );
  }
}

// class BodyUtils {
//   static const List<Widget> views = [
//     Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16.0),
//       child: DesktopHeader(),
//     ),
//     SizedBox(
//       height: 40,
//     ),
//     CartDesktopBuilder(),
//     SizedBox(
//       height: 140,
//     ),
//     KeyedSubtree(
//       // key: context.read<ScrollerProvider>().aboutSectionKey,
//       child: SizedBox(
//           child: SizedBox(
//         height: 20,
//       )),
//     ),
//     DeviderRow(
//       text: "About Me",
//     ),
//     SizedBox(
//       height: 100,
//     ),
//     AboutMeDetailes(),
//     SizedBox(
//       height: 80,
//     ),
//     KeyedSubtree(
//       // key: context.read<ScrollerProvider>().serviceSectionKey,
//       child: SizedBox(
//         height: 20,
//       ),
//     ),
//     DeviderRow(
//       text: "What Can I Do?",
//     ),
//     SizedBox(
//       height: 120,
//     ),
//     WhatCanIDoSection(),
//     SizedBox(
//       height: 140,
//     ),
//     KeyedSubtree(
//         // key: context.read<ScrollerProvider>().projectSectionKey,
//         child: SizedBox(
//       height: 20,
//     )),
//     DeviderRow(text: "My projects"),
//     SizedBox(
//       height: 90,
//     ),
//     MyProjectSection(),
//     SizedBox(
//       height: 90,
//     ),
//   ];
// }

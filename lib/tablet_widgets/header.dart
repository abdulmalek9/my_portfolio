import 'package:flutter/material.dart';
import 'package:my_portfolio/mobile_widget/resume_container.dart';
import 'package:my_portfolio/utils/app_images.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Image.asset(width: 85, height: 85, Assets.imagesMyLogo04),
        ),
        const Spacer(
          flex: 10,
        ),
        const ResumeContainer(),
        const SizedBox(
          width: 16,
        ),
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}



// static List headerItem = ["About", "Services", "Projects"];
// Padding(
//             padding: const EdgeInsets.only(right: 12.0),
//             child: GestureDetector(
//               onTap: () {
//                 context.read<ScrollerProvider>().changePageIndex(
//                     context.read<ScrollerProvider>().aboutSectionKey);
//               },
//               child: Text(
//                 headerItem[0],
//                 style: AppStyles.styleRegular14(context),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 12.0),
//             child: GestureDetector(
//               onTap: () {
//                 context.read<ScrollerProvider>().changePageIndex(
//                     context.read<ScrollerProvider>().serviceSectionKey);
//               },
//               child: Text(
//                 headerItem[1],
//                 style: AppStyles.styleRegular14(context),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 12.0),
//             child: GestureDetector(
//               onTap: () {
//                 context.read<ScrollerProvider>().changePageIndex(
//                     context.read<ScrollerProvider>().projectSectionKey);
//               },
//               child: Text(
//                 headerItem[2],
//                 style: AppStyles.styleRegular14(context),
//               ),
//             ),
//           ),
import 'package:abdulmalek_alkhatib/mobile_widget/resume_container.dart';
import 'package:abdulmalek_alkhatib/provider/scroller_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset(width: 80, height: 70, Assets.imagesMyLogo04),
        // const Spacer(
        //   flex: 10,
        // ),
        const ResumeContainer(),
        const SizedBox(
          width: 16,
        ),
        Consumer(
          builder: (context, value, child) => IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                // Provider.of<ScrollerProvider>(context)
                //     .scaffoldKey
                //     .currentState!
                //     .openDrawer();
                context
                    .read<ScrollerProvider>()
                    .scaffoldKey
                    .currentState!
                    .openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}

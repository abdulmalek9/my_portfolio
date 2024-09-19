import 'package:flutter/material.dart';
import 'package:my_portfolio/mobile_widget/resume_container.dart';
import 'package:my_portfolio/provider/scroller_provider.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
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
      ),
    );
  }
}

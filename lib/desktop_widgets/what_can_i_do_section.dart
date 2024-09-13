import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/glow_custom_container.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class WhatCanIDoSection extends StatelessWidget {
  const WhatCanIDoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 190),
      child: Row(
        children: [
          Expanded(
            child: GlowCustomContainer(
              child: Column(
                children: [
                  Image.asset(
                    width: 400,
                    height: 200,
                    Assets.imagesProgramingScreen,
                  ),
                  Text(
                    "Programming Skills",
                    style: AppStyles.styleBold24(context),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          Expanded(
              child: GlowCustomContainer(
            child: Column(
              children: [
                Image.asset(
                  width: 400,
                  height: 200,
                  Assets.imagesProgramingScreen,
                ),
                Text(
                  "Ai Skills",
                  style: AppStyles.styleBold24(context),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

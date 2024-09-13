import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/glow_custom_container.dart';
import 'package:my_portfolio/utils/app_images.dart';

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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                        width: 450, height: 235, Assets.imagesProgramingScreen),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Expanded(
              child: GlowCustomContainer(
            child: Column(
              children: [
                Image.asset(
                    width: 450, height: 235, Assets.imagesProgramingScreen)
              ],
            ),
          )),
        ],
      ),
    );
  }
}

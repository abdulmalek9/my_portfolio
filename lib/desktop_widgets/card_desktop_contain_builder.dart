import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/mobile_widget/personal_info_card.dart';
import 'package:my_portfolio/utils/app_images.dart';

class CardDesktopContainBuilder extends StatelessWidget {
  const CardDesktopContainBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const PersonalInfoCard(),
        const Spacer(
          flex: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0, right: 50),
          child: Container(
            width: 167 * 2,
            height: 167 * 2,
            decoration: ShapeDecoration(
                gradient: LinearGradient(colors: [
                  const Color(0xFFAB93D3).withOpacity(0.8),
                  const Color(0xFFFFFFFF).withOpacity(0)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                image: const DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                  image: AssetImage(Assets.imagesMyPic),
                ),
                shape: const OvalBorder()),
          ),
        )
      ],
    );
  }
}

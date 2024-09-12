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
          child: CircleAvatar(
              backgroundColor: const Color(0xFFAB93D3),
              radius: 167,
              child: Container(
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(Assets.imagesMyPic)),
                    shape: BoxShape.circle),
              )),
        )
      ],
    );
  }
}

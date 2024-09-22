import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/contact_icon_builder.dart';
import 'package:abdulmalek_alkhatib/mobile_widget/mobile_personal_info_card.dart';
import 'package:abdulmalek_alkhatib/utils/app_images.dart';

class CardMobileContainBuilder extends StatelessWidget {
  const CardMobileContainBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MyPicMobileWidget(),
        FittedBox(child: MobilePersonalInfoCard()),
        FittedBox(child: IconMobileBuilder()),
      ],
    );
  }
}

class MyPicMobileWidget extends StatelessWidget {
  const MyPicMobileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Container(
        width: 90 * 2,
        height: 90 * 2,
        decoration: ShapeDecoration(
            gradient: LinearGradient(colors: [
              const Color(0xFFAB93D3).withOpacity(0.8),
              const Color(0xFFFFFFFF).withOpacity(0)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            image: const DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              image: AssetImage(Assets.imagesMyPicture),
            ),
            shape: const OvalBorder()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/contact_icon_builder.dart';
import 'package:abdulmalek_alkhatib/tablet_widgets/personal_info_tablet_card.dart';
import 'package:abdulmalek_alkhatib/utils/app_images.dart';

class CardTabletContainBuilder extends StatelessWidget {
  const CardTabletContainBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyPictureWidget(),
        PersonalInfoTabletCard(),
        IconMobileBuilder()
      ],
    );
  }
}

class MyPictureWidget extends StatelessWidget {
  const MyPictureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, right: 0),
      child: Container(
        width: 98 * 2,
        height: 98 * 2,
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

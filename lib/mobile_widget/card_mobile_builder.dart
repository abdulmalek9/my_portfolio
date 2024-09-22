import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/custom_container.dart';
import 'package:abdulmalek_alkhatib/mobile_widget/card_mobile_contain_builder.dart';

class CardMobileBuilder extends StatelessWidget {
  const CardMobileBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.scaleDown,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        child: SizedBox(
          // width: double.infinity,
          // height: 350,
          child: CustomContainer(
            edgeInsetsGeometry:
                EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: CardMobileContainBuilder(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/custom_container.dart';
import 'package:abdulmalek_alkhatib/tablet_widgets/card_tablet_contain_builder.dart';

class CardTabletBuilder extends StatelessWidget {
  const CardTabletBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 120.0),
      child: SizedBox(
        // width: double.infinity,
        child: CustomContainer(
          edgeInsetsGeometry: EdgeInsets.only(top: 20, bottom: 20),
          child: CardTabletContainBuilder(),
        ),
      ),
    );
  }
}

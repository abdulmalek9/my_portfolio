import 'package:flutter/material.dart';
import 'package:my_portfolio/custom_container.dart';
import 'package:my_portfolio/tablet_widgets/card_tablet_contain_builder.dart';

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
          edgeInsetsGeometry: EdgeInsets.only(left: 50, top: 40, bottom: 40),
          child: CardTabletContainBuilder(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/custom_container.dart';
import 'package:my_portfolio/desktop_widgets/card_desktop_contain_builder.dart';

class CartDesktopBuilder extends StatelessWidget {
  const CartDesktopBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 506),
        child: const SizedBox(
          width: 686,
          height: 400,
          child: CustomContainer(
            child: CardDesktopContainBuilder(),
          ),
        ),
      ),
    );
  }
}

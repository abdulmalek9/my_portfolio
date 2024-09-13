import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/custom_devider.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class DeviderRow extends StatelessWidget {
  const DeviderRow({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: CustomDevider()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              text,
              style: AppStyles.styleSemiBold20(context),
            ),
          ),
          const Expanded(child: CustomDevider()),
        ],
      ),
    );
  }
}

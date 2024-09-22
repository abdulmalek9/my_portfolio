import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/custom_devider.dart';
import 'package:abdulmalek_alkhatib/utils/app_styles.dart';

class DeviderRow extends StatelessWidget {
  const DeviderRow(
      {super.key,
      required this.text,
      this.edgeInsetsGeometry,
      this.textPadding});
  final String text;
  final EdgeInsetsGeometry? edgeInsetsGeometry;
  final double? textPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          edgeInsetsGeometry ?? const EdgeInsets.symmetric(horizontal: 120.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: CustomDevider()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: textPadding ?? 60),
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

import 'package:flutter/material.dart';

class ContactDivider extends StatelessWidget {
  const ContactDivider({
    super.key,
    this.padding,
  });
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 50.0),
      child: const Divider(
        color: Color(0xFF6EABFE),
        thickness: 0.8,
      ),
    );
  }
}

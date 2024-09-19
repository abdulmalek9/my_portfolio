import 'package:flutter/material.dart';

class ContactDivider extends StatelessWidget {
  const ContactDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      child: Divider(
        color: Color(0xFF6EABFE),
        thickness: 1,
      ),
    );
  }
}

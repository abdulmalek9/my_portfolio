import 'package:flutter/material.dart';
import 'package:my_portfolio/mobile_widget/mobile_header.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: ListView(
        children: const [
          Expanded(child: MobileHeader()),
        ],
      ),
    );
  }
}

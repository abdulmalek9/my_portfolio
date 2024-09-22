import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyPortfolio(),
    ),
  );
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Abdulmalek Al-Khatib",
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const SafeArea(child: HomePage()),
    );
  }
}

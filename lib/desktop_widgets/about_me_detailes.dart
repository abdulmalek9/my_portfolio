import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:abdulmalek_alkhatib/constant/constant.dart';
import 'package:abdulmalek_alkhatib/utils/app_styles.dart';

class AboutMeDetailes extends StatelessWidget {
  const AboutMeDetailes({super.key});

  static List<String> tools = [
    "Flutter",
    "Dart",
    "Python",
    "Flask",
    "Mysql",
    "C++",
    "Java",
    "Kotlin"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            aboutMe,
            style: AppStyles.styleRegular22(context)
                .copyWith(height: 4, fontWeight: FontWeight.w300),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Technologies I have worked with:",
            style: AppStyles.styleMedium14(context, 16)
                .copyWith(color: const Color(0xFF56B8FF)),
          ),
          const SizedBox(
            height: 18,
          ),
          ToolsNameBuilder(tools: tools),
        ],
      ),
    );
  }
}

class ToolsNameBuilder extends StatelessWidget {
  const ToolsNameBuilder({
    super.key,
    required this.tools,
  });

  final List<String> tools;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      tools.length,
      (index) => Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          width: 65,
          height: 28,
          decoration: const BoxDecoration(
              border: GradientBoxBorder(
                  width: 1.5,
                  gradient: LinearGradient(
                      colors: [Color(0xFF5FBCFF), Color(0xFFA471FB)]))),
          child: Center(
            child: Text(
              tools[index],
              style: AppStyles.styleMedium14(context, 12),
            ),
          ),
        ),
      ),
    ));
  }
}

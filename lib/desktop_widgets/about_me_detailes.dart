import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class AboutMeDetailes extends StatelessWidget {
  const AboutMeDetailes({super.key});

  static List<String> tools = [
    "Flutter",
    "Dart",
    "Python",
    "Flask",
  ];
  static List<String> tools2 = ["Mysql", "C++", "Java", "Kotlen"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            """I'm a Fresh Graduate with Computer Science as Majors from Damascus University, Syria, I'm a skilled Flutter developer with a passion for creating innovative mobile apps over the past 1.5 years. My experience includes collaborating on diverse projects, where I've focused on creating responsive apps and integrating AI technologies. With a strong grasp of AI applications like Machine Learning, Deep Learning, and Large Language Models, I've successfully implemented these concepts in various projects. In addition I have some interests in Business.I’m a social person who likes to work with a team and be collaborative.\nI am passionate about my work and love creativity and constant learning.""",
            style: AppStyles.styleRegular18(context)
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
          const SizedBox(
            height: 8,
          ),
          ToolsNameBuilder(tools: tools2)
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
      (index) => Expanded(
        child: Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Container(
            height: 38,
            decoration: const BoxDecoration(
                border: GradientBoxBorder(
                    width: 4,
                    gradient: LinearGradient(
                        colors: [Color(0xFF5FBCFF), Color(0xFFA471FB)]))),
            child: Center(
              child: Text(
                tools[index],
                style: AppStyles.styleMedium14(context, null),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class MyAppSkillDetailes extends StatelessWidget {
  const MyAppSkillDetailes({super.key, this.fontSize});
  final double? fontSize;
  static List<String> skill = [
    "- Firebase Supabase Auth/Cloud",
    "- Responsive Apps",
    "- State Managments",
    "- REST APIs",
    "- Clean Code"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            skill.length,
            (index) => Text(
                  skill[index],
                  style: AppStyles.styleMedium14(context, fontSize ?? 16)
                      .copyWith(height: 1.8),
                )));
  }
}

class MyAISkillDetailes extends StatelessWidget {
  const MyAISkillDetailes({super.key, this.fontSize});
  final double? fontSize;
  static List<String> skill = [
    "- Large Language Model",
    "- Computer Vision",
    "- Machine Learning",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            skill.length,
            (index) => Text(
                  skill[index],
                  style: AppStyles.styleMedium14(context, fontSize ?? 16)
                      .copyWith(height: 1.8),
                )));
  }
}

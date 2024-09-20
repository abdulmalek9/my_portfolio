import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/constant.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class MyAppSkillDetailes extends StatelessWidget {
  const MyAppSkillDetailes({super.key, this.fontSize});
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            skillProgramming.length,
            (index) => Text(
                  skillProgramming[index],
                  style: AppStyles.styleMedium14(context, fontSize ?? 16)
                      .copyWith(height: 1.8),
                )));
  }
}

class MyAISkillDetailes extends StatelessWidget {
  const MyAISkillDetailes({super.key, this.fontSize});
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            skillAi.length,
            (index) => Text(
                  skillAi[index],
                  style: AppStyles.styleMedium14(context, fontSize ?? 16)
                      .copyWith(height: 1.8),
                )));
  }
}

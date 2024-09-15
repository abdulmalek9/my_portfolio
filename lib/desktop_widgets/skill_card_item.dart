import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/desktop_widgets/what_can_i_do_section_body.dart';
import 'package:my_portfolio/models/my_skill_card_model.dart';

class SkillCardItem extends StatelessWidget {
  const SkillCardItem({
    super.key,
    required this.mySkillCardModel,
    required this.isClicked,
    required this.mySkillDetailes,
  });

  final MySkillCardModel mySkillCardModel;
  final bool isClicked;
  final Widget mySkillDetailes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WhatCanIDoSectionBody(
          mySkillCardModel: mySkillCardModel,
        ),
        isClicked
            ? const SizedBox(
                height: 24,
              )
            : const SizedBox(),
        isClicked
            ? Animate(
                effects: const [FadeEffect()],
                child: Align(
                    alignment: Alignment.centerLeft, child: mySkillDetailes),
              )
            : const SizedBox(),
      ],
    );
  }
}

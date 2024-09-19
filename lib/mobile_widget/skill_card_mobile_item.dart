import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/mobile_widget/what_can_i_do_mobile_section_body.dart';
import 'package:my_portfolio/models/my_skill_card_model.dart';

class SkillCardMobileItem extends StatelessWidget {
  const SkillCardMobileItem({
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
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        WhatCanIDoMobileSectionBody(
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

import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/glow_custom_container.dart';
import 'package:my_portfolio/models/my_skill_card_model.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class WhatCanIDoSectionBody extends StatelessWidget {
  const WhatCanIDoSectionBody({
    super.key,
    required this.mySkillCardModel,
  });
  final MySkillCardModel mySkillCardModel;

  @override
  Widget build(BuildContext context) {
    return GlowCustomContainer(
      child: Column(
        children: [
          Image.asset(
            width: 400,
            height: 200,
            mySkillCardModel.skillImage,
          ),
          Text(
            mySkillCardModel.skillName,
            style: AppStyles.styleBold24(context),
          ),
          const SizedBox(
            height: 14,
          ),
          const Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Colors.white,
            size: 28,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

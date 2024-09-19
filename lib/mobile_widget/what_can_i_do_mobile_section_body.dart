import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/glow_custom_container.dart';
import 'package:my_portfolio/models/my_skill_card_model.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class WhatCanIDoMobileSectionBody extends StatelessWidget {
  const WhatCanIDoMobileSectionBody({
    super.key,
    required this.mySkillCardModel,
  });
  final MySkillCardModel mySkillCardModel;

  @override
  Widget build(BuildContext context) {
    return GlowCustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            width: 200, //400
            height: 90, //200
            mySkillCardModel.skillImage,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              mySkillCardModel.skillName,
              style: AppStyles.styleSemiBold20(context),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

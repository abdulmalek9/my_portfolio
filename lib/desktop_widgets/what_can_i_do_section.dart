import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/my_skill_detailes.dart';
import 'package:my_portfolio/desktop_widgets/skill_card_item.dart';
import 'package:my_portfolio/models/my_skill_card_model.dart';
import 'package:my_portfolio/utils/app_images.dart';

class WhatCanIDoSection extends StatefulWidget {
  const WhatCanIDoSection({super.key});

  @override
  State<WhatCanIDoSection> createState() => _WhatCanIDoSectionState();
}

class _WhatCanIDoSectionState extends State<WhatCanIDoSection> {
  List<MySkillCardModel> mySkillCardModel = [
    MySkillCardModel(
        skillImage: Assets.imagesProgramingScreen,
        skillName: "APP Development"),
    MySkillCardModel(skillImage: Assets.imagesAi01, skillName: "Ai"),
  ];

  bool isClicked = false;
  bool isAiClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 190),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: SkillCardItem(
                mySkillCardModel: mySkillCardModel[0],
                isClicked: isClicked,
                mySkillDetailes: const MyAppSkillDetailes(),
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isAiClicked = !isAiClicked;
                });
              },
              child: SkillCardItem(
                mySkillCardModel: mySkillCardModel[1],
                isClicked: isAiClicked,
                mySkillDetailes: const MyAISkillDetailes(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

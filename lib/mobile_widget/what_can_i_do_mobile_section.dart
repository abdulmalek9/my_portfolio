import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/my_skill_detailes.dart';
import 'package:my_portfolio/mobile_widget/skill_card_mobile_item.dart';
import 'package:my_portfolio/models/my_skill_card_model.dart';
import 'package:my_portfolio/utils/app_images.dart';

class WhatCanIDoMobileSection extends StatefulWidget {
  const WhatCanIDoMobileSection({super.key, this.edgeInsetsGeometry});
  final EdgeInsetsGeometry? edgeInsetsGeometry;

  @override
  State<WhatCanIDoMobileSection> createState() => _WhatCanIDoSectionState();
}

class _WhatCanIDoSectionState extends State<WhatCanIDoMobileSection> {
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
      padding: widget.edgeInsetsGeometry ??
          const EdgeInsets.symmetric(horizontal: 190),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isClicked = !isClicked;
              });
            },
            child: SkillCardMobileItem(
              mySkillCardModel: mySkillCardModel[0],
              isClicked: isClicked,
              mySkillDetailes: const MyAppSkillDetailes(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isAiClicked = !isAiClicked;
              });
            },
            child: SkillCardMobileItem(
              mySkillCardModel: mySkillCardModel[1],
              isClicked: isAiClicked,
              mySkillDetailes: const MyAISkillDetailes(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

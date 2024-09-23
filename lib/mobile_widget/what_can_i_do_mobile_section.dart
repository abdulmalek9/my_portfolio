import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/my_skill_detailes.dart';
import 'package:abdulmalek_alkhatib/mobile_widget/skill_card_mobile_item.dart';
import 'package:abdulmalek_alkhatib/models/my_skill_card_model.dart';
import 'package:abdulmalek_alkhatib/utils/app_images.dart';

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
        skillName: "App Development"),
    MySkillCardModel(skillImage: Assets.imagesAiIcon02, skillName: "AI"),
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

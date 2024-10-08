import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/my_skill_detailes.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/skill_card_item.dart';
import 'package:abdulmalek_alkhatib/models/my_skill_card_model.dart';
import 'package:abdulmalek_alkhatib/utils/app_images.dart';

class WhatCanIDoSection extends StatefulWidget {
  const WhatCanIDoSection({super.key, this.edgeInsetsGeometry});
  final EdgeInsetsGeometry? edgeInsetsGeometry;

  @override
  State<WhatCanIDoSection> createState() => _WhatCanIDoSectionState();
}

class _WhatCanIDoSectionState extends State<WhatCanIDoSection> {
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: InkWell(
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
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
            child: InkWell(
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
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

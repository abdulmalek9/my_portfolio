import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/what_can_i_do_section_body.dart';
import 'package:my_portfolio/models/my_skill_card_model.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:my_portfolio/utils/app_styles.dart';

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
    MySkillCardModel(skillImage: Assets.imagesAi0101, skillName: "Ai"),
  ];

  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 190),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  WhatCanIDoSectionBody(
                    mySkillCardModel: mySkillCardModel[0],
                  ),
                  isClicked
                      ? const SizedBox(
                          height: 24,
                        )
                      : const SizedBox(),
                  isClicked
                      ? const Align(
                          alignment: Alignment.centerLeft,
                          child: MyAppSkillDetailes())
                      : const SizedBox(),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          Expanded(
            child: WhatCanIDoSectionBody(
              mySkillCardModel: mySkillCardModel[1],
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppSkillDetailes extends StatelessWidget {
  const MyAppSkillDetailes({super.key});

  static List<String> skill = [
    "- Firebase Supabase Auth/Cloud",
    "- Responsive Apps",
    "- State Managments",
    "- REST APIs",
    "- Clean Code"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
              skill.length,
              (index) => Text(
                    skill[index],
                    style: AppStyles.styleMedium14(context, 16)
                        .copyWith(height: 1.8),
                  ))),
    );
  }
}

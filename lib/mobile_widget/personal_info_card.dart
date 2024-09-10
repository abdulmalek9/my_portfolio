import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Abdulmalek Al-khatib",
              style: AppStyles.styleSemiBold20(context),
            ),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Software Developer",
                style: AppStyles.styleMedium14(context, null)
                    .copyWith(color: const Color(0xFF56B8FF)),
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "A skilled flutter developer with 1.5 years of experience.\nyou can contact me at any time to\nstart a work full of creativity\nand good performance",
          style: AppStyles.styleMedium14(context, 10),
        ),
        const SizedBox(
          height: 8,
        ),
        const IconBuilder()
      ],
    );
  }
}

class IconBuilder extends StatelessWidget {
  const IconBuilder({super.key});

  static List<String> icons = [
    Assets.imagesGithupIcon,
    Assets.imagesEmaleIcon,
    Assets.imagesLinkedinIcon,
    Assets.imagesTelegrameIcon,
    Assets.imagesWhatsappIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: icons.map((e) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Flexible(child: Image.asset(width: 25, height: 25, e)),
        );
      }).toList(),
    );
  }
}

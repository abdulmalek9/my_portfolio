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
              style: AppStyles.styleSemiBold47(context),
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
                style: AppStyles.styleMedium14(context, 20)
                    .copyWith(color: const Color(0xFF56B8FF)),
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "A skilled flutter developer with 1.5 years of experience.\nyou can contact me at any time to start a work full\nof creativity and good performance",
          style: AppStyles.styleMedium14(context, 18),
          textAlign: TextAlign.justify,
        ),
        const Spacer(),
        // const Expanded(
        //   child: SizedBox(),
        // ),
        const IconBuilder(),
        const SizedBox(
          height: 38,
        )
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
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 60, maxHeight: 60),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(icons[0]),
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 60, maxHeight: 60),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(icons[1]),
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 50, maxHeight: 50),
          child: Image.asset(icons[2]),
        ),
        const SizedBox(
          width: 12.0,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 60, maxHeight: 60),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(icons[3]),
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 60, maxHeight: 60),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(icons[4]),
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
      ],
    );
  }
}

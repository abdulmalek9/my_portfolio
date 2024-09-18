import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class PersonalInfoMobieCard extends StatelessWidget {
  const PersonalInfoMobieCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Abdulmalek Al-khatib",
              style: AppStyles.styleSemiBold47(context),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "Software Developer",
              textAlign: TextAlign.start,
              style: AppStyles.styleMedium14(context, 20)
                  .copyWith(color: const Color(0xFF56B8FF)),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "A skilled flutter developer with 1.5 years of experience.\nyou can contact me at any time to start a work full\nof creativity and good performance",
          style: AppStyles.styleMedium14(context, 18),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}

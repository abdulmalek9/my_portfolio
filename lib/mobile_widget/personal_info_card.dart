import 'package:flutter/material.dart';
import 'package:my_portfolio/contact_icon_builder.dart';
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
        // const IconMobileBuilder(),
        // MediaQuery.sizeOf(context).width == SizeConfig.tabletPoint
        //     ? const IconMobileBuilder()
        const IconBuilder(),
        const Expanded(
          child: SizedBox(
              // height: 15,
              ),
        )
      ],
    );
  }
}

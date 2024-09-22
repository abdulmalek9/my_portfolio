import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/constant/constant.dart';
import 'package:abdulmalek_alkhatib/contact_icon_builder.dart';
import 'package:abdulmalek_alkhatib/utils/app_styles.dart';

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
              myDetails[0].myName,
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
                myDetails[0].myPosition,
                style: AppStyles.styleMedium14(context, 20)
                    .copyWith(color: const Color(0xFF56B8FF)),
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          myDetails[0].myDescripe,
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

import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/constant/constant.dart';
import 'package:abdulmalek_alkhatib/utils/app_styles.dart';

class MobilePersonalInfoCard extends StatelessWidget {
  const MobilePersonalInfoCard({
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
              myDetails[0].myName,
              style: AppStyles.styleSemiBold47(context),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              myDetails[0].myPosition,
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
          myDetails[0].myDescripe,
          style: AppStyles.styleMedium14(context, 18),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/utils/app_styles.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 12,
          ),
          FittedBox(
            child: Text(
              "Get In Touch:",
              style: AppStyles.styleMedium14(context, 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactDetailes(
                  detailesName: "Email:",
                  detailesContain: "akabdalmalek@gmail.com",
                ),
                SizedBox(
                  width: 100,
                ),
                ContactDetailes(
                  detailesName: "Phone:",
                  detailesContain: "+963 952 627 497",
                )
              ],
            ),
          ),
          const SizedBox(
            height: 38,
          )
        ],
      ),
    );
  }
}

class ContactDetailes extends StatelessWidget {
  const ContactDetailes({
    super.key,
    required this.detailesName,
    required this.detailesContain,
  });
  final String detailesName, detailesContain;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text(
            detailesName,
            style: AppStyles.styleRegular16(context),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          child: Text(
            detailesContain,
            style: AppStyles.styleRegular16(context),
          ),
        ),
      ],
    );
  }
}

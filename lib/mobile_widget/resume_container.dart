import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/utils/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeContainer extends StatelessWidget {
  const ResumeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 28, maxWidth: 90),
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse(
              "https://drive.google.com/drive/folders/192VpgXtZOC0YfxIACNW1T2wNba_4EfDh?usp=sharing"));
        },
        child: Container(
          decoration: ShapeDecoration(
            color: const Color(0xFF050C13),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 0.54,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xFF5FBCFF),
              ),
              borderRadius: BorderRadius.circular(3.22),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0xFF6EABFE),
                blurRadius: 12.90,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Resume",
                style: AppStyles.styleRegular14(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

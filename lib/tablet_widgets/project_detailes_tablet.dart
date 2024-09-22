import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/models/project_model.dart';
import 'package:abdulmalek_alkhatib/utils/app_styles.dart';
import 'package:abdulmalek_alkhatib/utils/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailesTablet extends StatelessWidget {
  const ProjectDetailesTablet({super.key, required this.projectModel});

  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450, maxHeight: 500),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              projectModel.projectImage,
              // width: 550,
              // height: 550,
            ),
          ),
        ),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                projectModel.projectName,
                style: AppStyles.styleSemiBold40(context),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                projectModel.projectTitle,
                style:
                    MediaQuery.sizeOf(context).width >= SizeConfig.tabletPoint
                        ? AppStyles.styleRegular14(context)
                        : AppStyles.styleRegular22(context),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
          ],
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: TextButton(
            child: Text(
              "Click to see source code",
              style: MediaQuery.sizeOf(context).width >= SizeConfig.tabletPoint
                  ? AppStyles.styleRegular14(context)
                  : AppStyles.styleRegular22(context),
            ),
            onPressed: () {
              launchUrl(Uri.parse(projectModel.projectLink));
            },
          ),
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }
}

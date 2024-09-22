import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/models/project_model.dart';
import 'package:abdulmalek_alkhatib/utils/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailes extends StatelessWidget {
  const ProjectDetailes({super.key, required this.projectModel});

  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projectModel.projectName,
              style: AppStyles.styleSemiBold40(context),
            ),
            const SizedBox(
              height: 38,
            ),
            Text(
              projectModel.projectTitle,
              style: AppStyles.styleRegular22(context),
            ),
            const SizedBox(
              height: 38,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: TextButton(
                child: Text(
                  "Click to see source code",
                  style: AppStyles.styleRegular22(context),
                ),
                onPressed: () {
                  launchUrl(Uri.parse(projectModel.projectLink));
                },
              ),
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(
              // width: 20,
              ),
        ),
        Flexible(
          flex: 9,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 550, maxHeight: 550),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                projectModel.projectImage,
                // width: 550,
                // height: 550,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

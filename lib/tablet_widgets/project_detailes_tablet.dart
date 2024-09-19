import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project_model.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class ProjectDetailesTablet extends StatelessWidget {
  const ProjectDetailesTablet({super.key, required this.projectModel});

  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500, maxHeight: 500),
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
              child: Text(
                projectModel.projectName,
                style: AppStyles.styleSemiBold40(context),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            FittedBox(
              child: Text(
                projectModel.projectTitle,
                style: AppStyles.styleRegular18(context),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }
}

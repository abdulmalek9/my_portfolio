import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/constant/constant.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/number_builder.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/project_detailes.dart';
import 'package:abdulmalek_alkhatib/provider/project_index_provider.dart';
import 'package:provider/provider.dart';

class ProjectPageView extends StatelessWidget {
  const ProjectPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const NumberBuilder(),
          const SizedBox(
            width: 100,
          ),
          Expanded(
            child: ProjectDetailes(
                projectModel: projectModel[
                    context.watch<ProjectIndexProvider>().pageindex]),
          ),
        ],
      ),
    );
  }
}

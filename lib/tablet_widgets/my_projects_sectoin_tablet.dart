import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/constant/constant.dart';
import 'package:abdulmalek_alkhatib/provider/project_index_provider.dart';
import 'package:abdulmalek_alkhatib/tablet_widgets/custom_row_button.dart';
import 'package:abdulmalek_alkhatib/tablet_widgets/project_detailes_tablet.dart';
import 'package:provider/provider.dart';

class MyProjectsSectionTablet extends StatelessWidget {
  const MyProjectsSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * .05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 250.0),
            child: CustomRowButton(
              icon: Icons.keyboard_arrow_left_outlined,
              onPressed: () {
                int currentIndex =
                    context.read<ProjectIndexProvider>().pageindex;
                getPrevioceIndex(currentIndex, projectModel.length, context);
              },
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          ProjectDetailesTablet(
              projectModel: projectModel[
                  context.watch<ProjectIndexProvider>().pageindex]),
          const SizedBox(
            width: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 250.0),
            child: CustomRowButton(
              icon: Icons.keyboard_arrow_right_outlined,
              onPressed: () {
                int currentIndex =
                    context.read<ProjectIndexProvider>().pageindex;
                getNextIndex(currentIndex, projectModel.length, context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void getPrevioceIndex(int index, int maxLength, BuildContext context) {
    context
        .read<ProjectIndexProvider>()
        .changePageIndex(index: index == 0 ? maxLength - 1 : index - 1);
    // return index == 0 ? 0 : index - 1;
  }

  void getNextIndex(int index, int maxLength, BuildContext context) {
    context
        .read<ProjectIndexProvider>()
        .changePageIndex(index: index == maxLength - 1 ? 0 : index + 1);
    // return index == maxLength ? maxLength : index + 1;
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project_model.dart';
import 'package:my_portfolio/provider/project_index_provider.dart';
import 'package:my_portfolio/tablet_widgets/custom_row_button.dart';
import 'package:my_portfolio/tablet_widgets/project_detailes_tablet.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:provider/provider.dart';

class MyProjectsSectionTablet extends StatelessWidget {
  const MyProjectsSectionTablet({super.key});
  static const List<String> description = [
    "A mobile AI assistant for the elderly.\nDetects emotions, facilitates communication, and provides reminders.",
    "A comprehensive invoicing dashboard.\nFeatures expense tracking, income analysis, and transaction history,\nwith a clean and user-friendly interface.",
    "A real-time chat app powered by Supabase.\nOffers secure authentication and scalable cloud storage\nfor seamless messaging experiences.",
    "A news app. Fetches articles\nfrom various sources and displays them in a user-friendly format,\nwith in-app webview for detailed reading.",
    "A note app with offline capabilities.\nStores notes locally using Hive database for easy access\nand editing without an internet connection,\nand some customizing for notes.",
    "A weather forecasting app.\nProvides accurate weather information for any location,\nincluding current conditions, hourly forecasts, and a 3-day outlook.",
    // "A concept of Music App developed using Flutter. Having functionality of playing Audio.",
    // "A simple GUI based Java application that sends file from Client to Server but not the other way around.",
    // "A concept app for self-services at various restaurants now a days. More like a Restaurant Ordering System.",
    // "Its my end semester project. The whole design I developed here is an inspiration from my favortie Flutter Developer Marcin Szałek and his blog Fidev."
  ];

  static List<ProjectModel> projectModel = [
    ProjectModel(
        projectName: "Wanees",
        projectTitle: description[0],
        projectImage: Assets.imagesWaneesApp),
    ProjectModel(
        projectName: "Dashboard",
        projectTitle: description[1],
        projectImage: Assets.imagesDashboard),
    ProjectModel(
        projectName: "Sparke",
        projectTitle: description[2],
        projectImage: Assets.imagesChatApp),
    ProjectModel(
        projectName: "News App",
        projectTitle: description[3],
        projectImage: Assets.imagesNewsApp),
    ProjectModel(
        projectName: "Notes App",
        projectTitle: description[4],
        projectImage: Assets.imagesNotesApp),
    ProjectModel(
        projectName: "Weathery",
        projectTitle: description[5],
        projectImage: Assets.imagesWaetherApp),
  ];
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

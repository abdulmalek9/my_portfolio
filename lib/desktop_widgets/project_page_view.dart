import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/desktop_widgets/number_builder.dart';
import 'package:my_portfolio/models/project_model.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class ProjectPageView extends StatefulWidget {
  const ProjectPageView({
    super.key,
  });

  @override
  State<ProjectPageView> createState() => _ProjectPageViewState();
}

class _ProjectPageViewState extends State<ProjectPageView> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  static const List<String> description = [
    "A mobile AI assistant for the elderly.\nDetects emotions, facilitates communication, and provides reminders.",
    "A comprehensive invoicing dashboard.\nFeatures expense tracking, income analysis, and transaction history,\nwith a clean and user-friendly interface.\n\nClick to see source code",
    "A real-time chat app powered by Supabase.\nOffers secure authentication and scalable cloud storage\nfor seamless messaging experiences.\n\nClick to see source code",
    "A news app. Fetches articles\nfrom various sources and displays them in a user-friendly format,\nwith in-app webview for detailed reading.\n\nClick to see source code",
    "A note app with offline capabilities.\nStores notes locally using Hive database for easy access\nand editing without an internet connection,\nand some customizing for notes.\n\nClick to see source code",
    "A weather forecasting app.\nProvides accurate weather information for any location,\nincluding current conditions, hourly forecasts, and a 3-day outlook.\n\nClick to see source code",
    // "Flutter Official Site clone using Flutter Web. Try the live site here. For the time being its not responsive fully so there might be responsiveness issues.",
    // "A concept of Music App developed using Flutter. Having functionality of playing Audio.",
    // "A simple GUI based Java application that sends file from Client to Server but not the other way around.",
    // "A concept app for self-services at various restaurants now a days. More like a Restaurant Ordering System.",
    // "Its my end semester project. The whole design I developed here is an inspiration from my favortie Flutter Developer Marcin Szałek and his blog Fidev."
  ];

  List<ProjectModel> projectModel = [
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
    return Row(
      children: [
        NumberBuilder(
          clickedIndex: currentPageIndex,
        ),
        const SizedBox(
          width: 100,
        ),
        Expanded(child: ProjectDetailes(projectModel: projectModel[2])),

        // ExpandablePageView(
        //   // scrollDirection: Axis.vertical,
        //   controller: pageController,
        //   children: List.generate(
        //       5, (index) => ProjectDetailes(projectModel: projectModel[index])),
        // )
      ],
    );
  }
}

class ProjectDetailes extends StatelessWidget {
  const ProjectDetailes({super.key, required this.projectModel});

  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              style: AppStyles.styleRegular18(context),
            )
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
        )
      ],
    );
  }
}

import 'package:abdulmalek_alkhatib/constant/constant_classes.dart';
import 'package:abdulmalek_alkhatib/models/project_model.dart';
import 'package:abdulmalek_alkhatib/utils/app_images.dart';

const List<MyInfoDetails> myDetails = [
  MyInfoDetails(
    myName: "Abdulmalek Al-Khatib",
    myPosition: "Software Devloper",
    myDescripe:
        "A skilled flutter developer with 1.5 years of experience.\nyou can contact me at any time to start a work full\nof creativity and good performance",
  ),
];
// """A Fresh Graduate with a bachelor degree in Computer engineering from Damascus University, Syria, I'm a skilled Flutter developer with a passion for creating innovative mobile apps over the past 1.5 years. My experience includes collaborating on diverse projects, where I've focused on creating responsive apps and integrating AI technologies. With a strong grasp of AI applications like Machine Learning, Deep Learning, and Large Language Models, I've successfully implemented these concepts in various projects. In addition I have some interests in Business.I’m a social person who likes to work with a team and be collaborative.\nI am passionate about my work and love creativity and constant learning.""";

const String aboutMe =
    """A Fresh Graduate with a bachelor degree in Computer engineering from Damascus University, Syria, Specialized in Flutter with an experience building mobile apps for the past 1.5 years. My experience includes collaborating on diverse projects, where I've focused on creating responsive apps and integrating AI technologies. With a strong grasp of AI applications like Machine Learning, Deep Learning, and Large Language Models, I've successfully implemented these concepts in various projects. In addition I have some interests in Business. I’m a social person who likes to work with a team and be collaborative.\nI am passionate about my work and love creativity and constant learning.""";

const List<String> skillProgramming = [
  "- Firebase Supabase Auth/Cloud",
  "- Responsive Apps",
  "- State Managments",
  "- REST APIs",
  "- Clean Code"
];

const List<String> skillAi = [
  "- Large Language Model",
  "- Computer Vision",
  "- Machine Learning",
];

const List<String> description = [
  "An e-learning platform offering exclusive video content,\n interactive learning, live teacher sessions, exams, and more",
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
const List<String> numbers = ["1", "2", "3", "4", "5", "6", "7"];

const List<String> projectName = [
  "Dentasty",
  "Wanees",
  "Dashboard",
  "Sparke",
  "News App",
  "Notes App",
  "Weathery",
];

const List<String> projectLink = [
  "https://drive.google.com/drive/u/2/folders/1Pm6EYH4L9loSn9LJEPKKt1mNq4Huz6qj",
  "https://github.com/abdulmalek9",
  "https://github.com/abdulmalek9/responsive_app",
  "https://github.com/abdulmalek9/chat_app",
  "https://github.com/abdulmalek9/NewsApp/tree/main",
  "https://github.com/abdulmalek9/Note_App",
  "https://github.com/abdulmalek9/weather_app",
];

List<ProjectModel> projectModel = [
  ProjectModel(
      projectName: projectName[0],
      projectTitle: description[0],
      projectImage: Assets.imagesDentacity,
      projectLink: projectLink[0],
      clickButtonName: "Click To try App"),
  ProjectModel(
      projectName: projectName[1],
      projectTitle: description[1],
      projectImage: Assets.imagesWaneesApp,
      projectLink: projectLink[1],
      clickButtonName: "Click to see source code"),
  ProjectModel(
      projectName: projectName[2],
      projectTitle: description[2],
      projectImage: Assets.imagesDashboard,
      projectLink: projectLink[2],
      clickButtonName: "Click to see source code"),
  ProjectModel(
      projectName: projectName[3],
      projectTitle: description[3],
      projectImage: Assets.imagesChatApp,
      projectLink: projectLink[3],
      clickButtonName: "Click to see source code"),
  ProjectModel(
      projectName: projectName[4],
      projectTitle: description[4],
      projectImage: Assets.imagesNewsApp,
      projectLink: projectLink[4],
      clickButtonName: "Click to see source code"),
  ProjectModel(
      projectName: projectName[5],
      projectTitle: description[5],
      projectImage: Assets.imagesNotesApp,
      projectLink: projectLink[5],
      clickButtonName: "Click to see source code"),
  ProjectModel(
      projectName: projectName[6],
      projectTitle: description[6],
      projectImage: Assets.imagesWaetherApp,
      projectLink: projectLink[6],
      clickButtonName: "Click to see source code"),
];

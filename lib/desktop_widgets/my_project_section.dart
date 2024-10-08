import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/desktop_widgets/project_page_view.dart';

class MyProjectSection extends StatelessWidget {
  const MyProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(left: 120.0, right: 10),
        child: ProjectPageView());

    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(
    //       create: (context) => ProjectIndexProvider(),
    //     ),
    //   ],
    //   child: const Padding(
    //       padding: EdgeInsets.only(left: 120.0, right: 10),
    //       child: ProjectPageView()),
    // );
  }
}

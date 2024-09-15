import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop_widgets/project_page_view.dart';
import 'package:my_portfolio/provider/project_index_provider.dart';
import 'package:provider/provider.dart';

class MyProjectSection extends StatelessWidget {
  const MyProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProjectIndexProvider(),
        ),
      ],
      child: const Padding(
          padding: EdgeInsets.only(left: 120.0, right: 10),
          child: ProjectPageView()),
    );
  }
}

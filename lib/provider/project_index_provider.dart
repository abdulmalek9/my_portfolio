import 'package:flutter/material.dart';

class ProjectIndexProvider extends ChangeNotifier {
  int pageindex;

  ProjectIndexProvider({this.pageindex = 0});

  void changePageIndex({required int index}) async {
    pageindex = index;
    notifyListeners();
  }
}

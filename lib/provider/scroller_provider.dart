import 'package:flutter/material.dart';

class ScrollerProvider extends ChangeNotifier {
  GlobalKey aboutSectionKey = GlobalKey();
  GlobalKey about2SectionKey = GlobalKey();

  GlobalKey about1SectionKey = GlobalKey();

  // void changePageIndex(GlobalKey key) async {
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     final context = key.currentContext;
  //     if (context != null) {
  //       Scrollable.ensureVisible(context,
  //           duration: const Duration(milliseconds: 500),
  //           curve: Curves.easeInOut);
  //     }
  //     notifyListeners();
  //   });
  // }
  void changePageIndex(GlobalKey key) async {
    final context = key.currentContext;
    if (context != null) {
      print("object");
    }
  }
}

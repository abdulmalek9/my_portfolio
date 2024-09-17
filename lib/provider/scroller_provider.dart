import 'package:flutter/material.dart';

class ScrollerProvider extends ChangeNotifier {
  GlobalKey aboutSectionKey = GlobalKey();
  GlobalKey projectSectionKey = GlobalKey();

  GlobalKey serviceSectionKey = GlobalKey();

  void changePageIndex(GlobalKey key) async {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
    notifyListeners();
  }

  final ScrollController scrollController = ScrollController();
  // void changePageIndex(GlobalKey key) {
  //   final context = key.currentContext;
  //   log("message");
  //   log("message2");
  //   final box = context!.findRenderObject() as RenderBox;
  //   final position =
  //       box.localToGlobal(Offset.zero, ancestor: context.findRenderObject());
  //   scrollController.animateTo(
  //     position.dy + scrollController.offset,
  //     duration: const Duration(seconds: 1),
  //     curve: Curves.easeInOut,
  //   );
  // }
  // void changePageIndex(GlobalKey key) async {
  //   final context = key.currentContext;
  //   if (context != null) {
  //     print("object");
  //   }
  // }
}

// import 'package:flutter/cupertino.dart';
// import 'package:folio/configs/app_dimensions.dart';

// class ScrollProvider extends ChangeNotifier {
//   final scrollController = ScrollController();

//   ScrollController get controller => scrollController;

//   scroll(int index) {
//     double offset = index == 1
//         ? 270
//         : index == 2
//             ? 255
//             : index == 3
//                 ? 250
//                 : 245;
//     controller.animateTo(
//       AppDimensions.normalize(
//         offset * index.toDouble(),
//       ),
//       duration: const Duration(seconds: 1),
//       curve: Curves.easeInOut,
//     );
//   }

//   scrollMobile(int index) {
//     double offset = index == 1
//         ? 290
//         : index == 2
//             ? 360
//             : index == 3
//                 ? 300
//                 : 310;
//     controller.animateTo(
//       AppDimensions.normalize(
//         offset * index.toDouble(),
//       ),
//       duration: const Duration(seconds: 1),
//       curve: Curves.easeInOut,
//     );
//   }
// }
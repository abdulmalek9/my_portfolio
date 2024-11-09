import 'package:flutter/material.dart';
import 'package:abdulmalek_alkhatib/provider/project_index_provider.dart';
import 'package:abdulmalek_alkhatib/utils/app_styles.dart';
import 'package:provider/provider.dart';

import '../constant/constant.dart';

class NumberBuilder extends StatelessWidget {
  const NumberBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Column(
        // mainAxisSize: MainAxisSize.min,
        children: List.generate(
          numbers.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: InkWell(
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                context
                    .read<ProjectIndexProvider>()
                    .changePageIndex(index: index);
              }
              // setState(() {});
              ,
              child: Container(
                decoration: index ==
                        context.watch<ProjectIndexProvider>().pageindex
                    ? ShapeDecoration(
                        shape: const OvalBorder(),
                        shadows: [
                          BoxShadow(
                              color: const Color(0xFF6EABFE).withOpacity(0.5),
                              blurRadius: 18.90, //42.49,
                              offset: const Offset(0, 0),
                              spreadRadius: 3,
                              blurStyle: BlurStyle.normal),
                        ],
                      )
                    : null,
                child: Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  child: Text(
                    numbers[index],
                    style: AppStyles.styleBold26(context).copyWith(
                      color: index ==
                              context.watch<ProjectIndexProvider>().pageindex
                          ? Colors.white
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

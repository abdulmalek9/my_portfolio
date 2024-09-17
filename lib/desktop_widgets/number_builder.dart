import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/project_index_provider.dart';
import 'package:my_portfolio/utils/app_styles.dart';
import 'package:provider/provider.dart';

class NumberBuilder extends StatelessWidget {
  const NumberBuilder({
    super.key,
  });

  static List<String> numbers = ["1", "2", "3", "4", "5", "6"];

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Column(
        // mainAxisSize: MainAxisSize.min,
        children: List.generate(
          NumberBuilder.numbers.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: GestureDetector(
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
                    NumberBuilder.numbers[index],
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

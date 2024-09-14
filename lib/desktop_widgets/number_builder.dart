import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_styles.dart';

class NumberBuilder extends StatelessWidget {
  const NumberBuilder({
    super.key,
    required this.clickedIndex,
  });
  final int clickedIndex;
  static List<String> numbers = ["1", "2", "3", "4", "5"];
  @override
  Widget build(BuildContext context) {
    return Column(
        // mainAxisSize: MainAxisSize.min,
        children: List.generate(
            numbers.length,
            (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Container(
                    decoration: 1 == 2
                        ? ShapeDecoration(
                            shape: const OvalBorder(),
                            shadows: [
                              BoxShadow(
                                  color:
                                      const Color(0xFF6EABFE).withOpacity(0.5),
                                  blurRadius: 18.90, //42.49,
                                  offset: const Offset(0, 0),
                                  spreadRadius: 3,
                                  blurStyle: BlurStyle.normal),
                            ],
                          )
                        : null,
                    child: Text(
                      numbers[index],
                      style: AppStyles.styleBold26(context).copyWith(
                        color: index == clickedIndex ? Colors.white : null,
                      ),
                    ),
                  ),
                )));
  }
}

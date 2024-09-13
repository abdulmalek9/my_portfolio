import 'package:flutter/material.dart';

class CustomDevider extends StatelessWidget {
  const CustomDevider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 5,
      decoration: ShapeDecoration(
          shadows: const [
            BoxShadow(
              color: Color(0xFF6EABFE),
              blurRadius: 12.90,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          ],
          color: const Color(0xff86CDFF),
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}

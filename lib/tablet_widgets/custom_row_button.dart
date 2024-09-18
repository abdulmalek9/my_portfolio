import 'package:flutter/material.dart';

class CustomRowButton extends StatelessWidget {
  const CustomRowButton({super.key, this.onPressed, this.icon});
  final Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
          shadows: [
            BoxShadow(
                color: Color(0xFF6EABFE),
                blurRadius: 9.90,
                offset: Offset(0, 0),
                spreadRadius: 0,
                blurStyle: BlurStyle.outer),
          ],
          shape: OvalBorder(
              side: BorderSide(
            color: Color(0xff86CDFF),
          ))),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: Colors.white,
          )),
    );
  }
}

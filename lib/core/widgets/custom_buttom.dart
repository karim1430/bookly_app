import 'package:flutter/material.dart';

import '../utils/style.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.text});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: Style.textStyle16.copyWith(color: textColor),
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}

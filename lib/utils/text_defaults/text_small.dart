import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';

class SmallText extends StatelessWidget {
  const SmallText(this.text, {super.key, this.fontStyle});

  final String text;
  final FontStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: WebColors.dark,
        fontStyle: fontStyle,
      ),
    );
  }
}

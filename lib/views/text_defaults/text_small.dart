import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';

class SmallText extends StatelessWidget {
  SmallText(this.text, {this.fontStyle});

  String text;
  FontStyle? fontStyle;

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

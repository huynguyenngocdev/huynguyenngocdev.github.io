import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/dipro_font.dart';

class PageTitleText extends StatelessWidget {
  PageTitleText(this.text, {this.fontStyle, this.color, this.fontFamily});

  String text;
  FontStyle? fontStyle;
  Color? color;
  String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: WebColors.darkPrimary,
        fontSize: 42.0,
        fontStyle: fontStyle,
        fontFamily: (fontFamily ?? DINPro.black),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/dipro_font.dart';

class BigText extends StatelessWidget {
  BigText(this.text, {this.fontStyle, this.color, this.fontFamily});

  String text;
  FontStyle? fontStyle;
  Color? color;
  String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: WebColors.dark,
        fontSize: 48.0,
        fontStyle: fontStyle,
        fontFamily: (fontFamily ?? DINPro.bold),
      ),
    );
  }
}

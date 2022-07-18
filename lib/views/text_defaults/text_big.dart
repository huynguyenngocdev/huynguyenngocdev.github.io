import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/dipro_font.dart';

class BigText extends StatelessWidget {
  const BigText(this.text,
      {Key? key, this.fontStyle, this.color, this.fontFamily})
      : super(key: key);

  final String text;
  final FontStyle? fontStyle;
  final Color? color;
  final String? fontFamily;

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

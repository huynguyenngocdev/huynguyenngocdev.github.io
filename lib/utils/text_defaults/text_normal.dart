import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/dipro_font.dart';

class NormalText extends StatelessWidget {
  const NormalText(this.text,
      {Key? key,
      this.fontStyle,
      this.color,
      this.fontFamily,
      this.isCenter = false})
      : super(key: key);

  final String text;
  final FontStyle? fontStyle;
  final Color? color;
  final String? fontFamily;
  final bool isCenter;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: (color ?? WebColors.dark),
        fontSize: 16.0,
        fontStyle: fontStyle,
        fontFamily: (fontFamily ?? DINPro.light),
      ),
      textAlign: isCenter ? TextAlign.center : TextAlign.left,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/dipro_font.dart';
import 'package:huy_resume/views/text_defaults/text_normal.dart';

class DrawerTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                color: WebColors.darkPrimary,
                boxShadow: const [
                  BoxShadow(color: Color.fromRGBO(2, 4, 16, 1)),
                ],
                image: const DecorationImage(
                    image: NetworkImage("images/main_logo.jpg"),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(150.0)),
                border: Border.all(color: Colors.red, width: 5.0)),
          ),
          const SizedBox(width: 0.0, height: 8.0),
          const Text(
            Header_Title,
            style: TextStyle(
                fontSize: 24,
                fontFamily: DINPro.medium,
                color: WebColors.light),
          ),
          NormalText(
            Header_SubTitle,
            color: WebColors.light,
            fontFamily: DINPro.light,
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: WebColors.primary,
        boxShadow: [
          BoxShadow(color: WebColors.light),
        ],
      ),
    );
  }
}

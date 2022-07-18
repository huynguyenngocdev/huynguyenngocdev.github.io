import 'package:flutter/material.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/dipro_font.dart';
import 'package:huy_resume/views/text_defaults/text_normal.dart';

class DrawerTop extends StatelessWidget {
  const DrawerTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            decoration: const BoxDecoration(
                color: WebColors.darkPrimary,
                boxShadow: [
                  BoxShadow(color: Color.fromRGBO(2, 4, 16, 1)),
                ],
                image: DecorationImage(
                    image: NetworkImage("images/main_logo.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(150.0))),
          ),
          const SizedBox(width: 0.0, height: 8.0),
          const Text(
            Header_Title,
            style: TextStyle(
                fontSize: 24,
                fontFamily: DINPro.medium,
                color: WebColors.light),
            textAlign: TextAlign.center,
          ),
          const SizedBox(width: 0.0, height: 8.0),
          const NormalText(
            Header_SubTitle,
            color: WebColors.light,
            fontFamily: DINPro.light,
            isCenter: true,
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: WebColors.primary,
      ),
    );
  }
}

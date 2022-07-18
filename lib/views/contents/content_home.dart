// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:huy_resume/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/views/responsive_layout.dart';
import 'package:huy_resume/views/text_defaults/text_big.dart';
import 'package:huy_resume/views/text_defaults/text_normal.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeContentState();
}

class HomeContentState extends State<HomeContent> {
  final List<bool> _iconHoverState = [false, false, false, false, false];

  _decoratedIcon(
      int id, IconData icon, Color bgcolor, Color iconColor, String urlToOpen) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      width: 40.0,
      height: 40.0,
      child: Container(
        decoration: BoxDecoration(
          color: (_iconHoverState[id] ? bgcolor : WebColors.lightPrimary),
          shape: BoxShape.circle,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onHover: (hover) {
            setState(() {
              _iconHoverState[id] = hover;
            });
          },
          onTap: () {
            js.context.callMethod("open", [urlToOpen]);
          },
          child: Icon(
            icon,
            color: (_iconHoverState[id] ? iconColor : WebColors.light),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.light,
      height: MediaQuery.of(context).size.height,
      // padding: EdgeInsets.all(48),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: (ResponsiveLayout.isLargeScreen(context)
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center),
            children: <Widget>[
              Container(
                width: 240.0,
                height: 240.0,
                decoration: const BoxDecoration(
                    color: Color(0x00000fff),
                    image: DecorationImage(
                        image: NetworkImage("images/avatar.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(150.0))),
              ),
              const SizedBox(width: 0.0, height: 32.0),
              const BigText(Header_Title),
              const NormalText(About_Me_Desc),
              const SizedBox(width: 0.0, height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _decoratedIcon(0, AppIcons.facebook_1, Colors.white,
                      Colors.blue, Header_Link_1), // Facebook
                  _decoratedIcon(1, AppIcons.github, Colors.white, Colors.black,
                      Header_Link_2), // Github
                  _decoratedIcon(2, AppIcons.linkedin, Colors.blue,
                      Colors.white, Header_Link_3), // LinkedIn
                  _decoratedIcon(3, Icons.mail, Colors.red, Colors.white,
                      Header_Link_4), // Gmail
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

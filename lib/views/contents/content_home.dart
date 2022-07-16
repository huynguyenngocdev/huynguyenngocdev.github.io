import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:huy_resume/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/views/responsive_layout.dart';
import 'package:huy_resume/views/text_defaults/text_big.dart';
import 'package:huy_resume/views/text_defaults/text_normal.dart';

class HomeContent extends StatefulWidget {
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
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onHover: (hover) {
          setState(() {
            _iconHoverState[id] = hover;
          });
        },
        onTap: () {},
        child: RaisedButton(
          elevation: 0,
          color: (_iconHoverState[id] ? bgcolor : WebColors.lightPrimary),
          onPressed: () {
            js.context.callMethod("open", [urlToOpen]);
          },
          padding: const EdgeInsets.all(0.0),
          child: IconButton(
            onPressed: null,
            icon: Icon(icon,
                color: (_iconHoverState[id] ? iconColor : WebColors.light)),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
                decoration: BoxDecoration(
                    color: const Color(0x00000fff),
                    image: const DecorationImage(
                        image: NetworkImage("images/itsamechad.jpg"),
                        fit: BoxFit.cover),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(150.0)),
                    border: Border.all(color: Colors.red, width: 20.0)),
              ),
              const SizedBox(width: 0.0, height: 32.0),
              BigText(Header_Title),
              NormalText(About_Me_Desc),
              const SizedBox(width: 0.0, height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _decoratedIcon(0, AppIcons.facebook_1, Colors.white,
                      Colors.blue, Header_Link_1), // Facebook
                  _decoratedIcon(1, AppIcons.twitter, Colors.white,
                      Colors.lightBlue, Header_Link_2), //Twitter
                  _decoratedIcon(2, AppIcons.github, Colors.white, Colors.black,
                      Header_Link_3), // Github
                  _decoratedIcon(3, AppIcons.bitbucket, Colors.white,
                      Colors.blue, Header_Link_4), // Bitbucket
                  _decoratedIcon(4, AppIcons.linkedin, Colors.blue,
                      Colors.white, Header_Link_5), // LinkedIn
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

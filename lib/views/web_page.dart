import 'package:flutter/material.dart';
import 'package:huy_resume/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/views/content_frame.dart';
import 'package:huy_resume/views/drawer/drawer_item.dart';
import 'package:huy_resume/views/drawer/drawer_top.dart';

class WebPage extends StatefulWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WebPageState();
}

class WebPageState extends State<WebPage> {
  int selectedItem = 0;

  _setStateItemId(int id) {
    setState(() {
      selectedItem = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // ListView
          Container(
            width: DrawerWidth,
            height: MediaQuery.of(context).size.height,
            color: WebColors.primary,
            child: ListView(
              children: <Widget>[
                // Top Bar
                const DrawerTop(),
                DrawerItem(
                  AppIcons.person,
                  "About me",
                  selectedItem == 0,
                  onPressed: () {
                    _setStateItemId(0);
                  },
                ),
                DrawerItem(
                  AppIcons.lightbulb_outline,
                  "Skills",
                  selectedItem == 1,
                  onPressed: () {
                    _setStateItemId(1);
                  },
                ),
                DrawerItem(
                  AppIcons.award,
                  "Awards",
                  selectedItem == 2,
                  onPressed: () {
                    _setStateItemId(2);
                  },
                ),
                DrawerItem(
                  AppIcons.pin,
                  "News & Articles",
                  selectedItem == 3,
                  onPressed: () {
                    _setStateItemId(3);
                  },
                ),
              ],
            ),
          ),
          // Content
          Expanded(
            child: ContentFrame(selectedItem),
          )
        ],
      ),
    );
  }
}

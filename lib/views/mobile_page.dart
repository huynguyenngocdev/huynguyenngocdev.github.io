import 'package:flutter/material.dart';
import 'package:huy_resume/app_icons.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/dipro_font.dart';
import 'package:huy_resume/views/content_frame.dart';
import 'package:huy_resume/views/drawer/drawer_item.dart';
import 'package:huy_resume/views/drawer/drawer_top.dart';
import 'package:huy_resume/views/text_defaults/text_normal.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MobilePageState();
}

class MobilePageState extends State<MobilePage> {
  int selectedItem = 0;

  _setStateItemId(int id) {
    Navigator.pop(context);
    setState(() {
      selectedItem = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const NormalText(
          "MENU",
          fontFamily: DINPro.bold,
          color: WebColors.light,
        ),
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Container(
          color: WebColors.primary,
          child: ListView(
            children: <Widget>[
              // Top Bar
              const DrawerTop(),
              DrawerItem(
                AppIcons.person,
                "About",
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
      ),
      body: ContentFrame(selectedItem),
    );
  }
}

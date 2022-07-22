import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/dipro_font.dart';
import 'package:huy_resume/utils/page.dart';
import 'package:huy_resume/utils/text_defaults/text_normal.dart';
import 'package:huy_resume/views/content_frame.dart';
import 'package:huy_resume/views/widgets/drawer/drawer_custom.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MobilePageState();
}

class MobilePageState extends State<MobilePage> {
  PAGE pageSelected = PAGE.about;

  _setStateItemId(PAGE page) {
    Navigator.pop(context);
    setState(() {
      pageSelected = page;
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
            child: DrawerCustom(
                onPressDrawerItem: _setStateItemId,
                pageSelected: pageSelected)),
      ),
      body: ContentFrame(pageSelected),
    );
  }
}

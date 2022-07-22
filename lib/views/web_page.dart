import 'package:flutter/material.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/page.dart';
import 'package:huy_resume/views/content_frame.dart';
import 'package:huy_resume/views/drawer/drawer_custom.dart';

class WebPage extends StatefulWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WebPageState();
}

class WebPageState extends State<WebPage> {
  PAGE pageSelected = PAGE.about;

  _setStateItemId(PAGE page) {
    setState(() {
      pageSelected = page;
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
          // Menu
          Container(
              width: DrawerWidth,
              height: MediaQuery.of(context).size.height,
              color: WebColors.primary,
              child: DrawerCustom(
                  onPressDrawerItem: _setStateItemId,
                  pageSelected: pageSelected)),
          // Content
          Expanded(
            child: ContentFrame(pageSelected),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/page.dart';

import 'drawer_item.dart';
import 'drawer_top.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom(
      {Key? key, required this.onPressDrawerItem, required this.pageSelected})
      : super(key: key);
  final Function onPressDrawerItem;
  final PAGE pageSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Top Bar
        const DrawerTop(),
        Expanded(
          child: ListView(
            controller: ScrollController(),
            children: DRAWER_LIST
                .map(
                  (e) => DrawerItem(
                    e.icon, //icon
                    e.title, //title
                    pageSelected == e.page, //isSelected?
                    onPressed: () {
                      onPressDrawerItem(e.page); //handle when press
                    },
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

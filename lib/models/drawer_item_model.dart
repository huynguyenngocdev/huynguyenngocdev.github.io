import 'package:flutter/cupertino.dart';
import 'package:huy_resume/utils/page.dart';

class DrawerItemModel {
  final IconData icon;
  final PAGE page;
  final String title;
  DrawerItemModel(
      {required this.icon, required this.page, required this.title});
}

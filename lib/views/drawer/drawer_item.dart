import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/dipro_font.dart';
import 'package:huy_resume/views/text_defaults/text_normal.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem(this.icon, this.text, this.isSelected,
      {Key? key, required this.onPressed})
      : super(key: key);

  IconData icon;
  String text;
  bool isSelected;

  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: (isSelected ? WebColors.light : null),
      onPressed: () => onPressed(),
      padding: const EdgeInsets.fromLTRB(32, 15, 0, 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
            color: (isSelected ? WebColors.dark : WebColors.light),
            size: 24.0,
          ),
          const SizedBox(
            width: 16,
          ),
          NormalText(
            text,
            color: (isSelected ? WebColors.dark : WebColors.light),
            fontFamily: (isSelected ? DINPro.medium : DINPro.light),
          ),
        ],
      ),
    );
  }
}

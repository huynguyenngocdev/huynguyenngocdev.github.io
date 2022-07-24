import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';

class ButtonList extends StatelessWidget {
  const ButtonList(this.value, {Key? key}) : super(key: key);

  final List value;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: value.map((hash) {
          return Tooltip(
            message: hash.item2,
            child: Container(
              width: 40.0,
              height: 40.0,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                  color: WebColors.lightPrimary, shape: BoxShape.circle),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onHover: (hover) {},
                onTap: () {
                  js.context.callMethod("open", [hash.item2]);
                },
                child: Icon(hash.item1, color: WebColors.light),
              ),
            ),
          );
        }).toList());
  }
}

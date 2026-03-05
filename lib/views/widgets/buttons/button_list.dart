import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:web/web.dart' as web;

class ButtonList extends StatelessWidget {
  const ButtonList(this.value, {super.key});

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
                  web.window.open(hash.item2.toString(), '_blank');
                },
                child: Icon(hash.item1, color: WebColors.light),
              ),
            ),
          );
        }).toList());
  }
}

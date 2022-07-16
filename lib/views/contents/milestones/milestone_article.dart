import 'package:flutter/material.dart';
import 'package:huy_resume/app_icons.dart';
import 'package:huy_resume/views/buttons/button_list.dart';
import 'package:huy_resume/views/contents/milestones/milestone_base.dart';
import 'package:huy_resume/views/text_defaults/text_item_title.dart';
import 'package:huy_resume/views/text_defaults/text_normal.dart';

class MilestoneArticle extends StatelessWidget {
  MilestoneArticle(this.value, {required this.buttons});

  List value;
  List buttons;

  @override
  Widget build(BuildContext context) {
    return MilestoneBase(
      AppIcons.article,
      value,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ItemTitleText(value[0]),
          NormalText(
            value[1],
            fontStyle: FontStyle.italic,
          ),
          const SizedBox(
            height: 16,
          ),
          NormalText(value[2]),
          const SizedBox(
            height: 8,
          ),
          ButtonList(buttons),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:huy_resume/app_icons.dart';
import 'package:huy_resume/views/contents/milestones/milestone_base.dart';
import 'package:huy_resume/views/text_defaults/text_item_title.dart';
import 'package:huy_resume/views/text_defaults/text_normal.dart';

class MilestoneJob extends StatelessWidget {
  const MilestoneJob(this.value, {Key? key}) : super(key: key);

  final List value;

  @override
  Widget build(BuildContext context) {
    return MilestoneBase(
      AppIcons.cogs,
      value,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
        ],
      ),
    );
  }
}

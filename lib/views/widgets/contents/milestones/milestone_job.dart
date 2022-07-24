import 'package:flutter/material.dart';
import 'package:huy_resume/utils/text_defaults/text_item_title.dart';
import 'package:huy_resume/utils/text_defaults/text_normal.dart';
import 'package:huy_resume/views/widgets/buttons/button_list.dart';
import 'package:huy_resume/views/widgets/contents/milestones/milestone_base.dart';

class MilestoneJob extends StatelessWidget {
  const MilestoneJob(this.value, {Key? key, required this.buttons})
      : super(key: key);

  final List value;
  final List buttons;
  @override
  Widget build(BuildContext context) {
    return MilestoneBase(
      Icons.business,
      value,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
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
          buttons.isNotEmpty ? ButtonList(buttons) : Container(),
        ],
      ),
    );
  }
}

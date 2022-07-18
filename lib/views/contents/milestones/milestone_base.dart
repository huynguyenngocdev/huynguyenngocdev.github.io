import 'package:flutter/material.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';

class MilestoneBase extends StatelessWidget {
  const MilestoneBase(this.icon, this.value, {Key? key, this.content})
      : super(key: key);

  final IconData icon;
  final List value;
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 48),
          child: Card(
            margin: const EdgeInsets.all(32),
            child: Container(
                padding: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: content),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 35.0,
          bottom: 0.0,
          child: Container(
            height: 50.0,
            width: 1.0,
            color: WebColors.darkPrimary,
          ),
        ),
        Positioned(
          top: 40.0,
          left: 10.0,
          child: Container(
            height: MilestoneFixedIconSize - 10,
            width: MilestoneFixedIconSize - 10,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: WebColors.light),
            child: Container(
              margin: const EdgeInsets.all(5.0),
              height: MilestoneFixedIconSize,
              width: MilestoneFixedIconSize,
              child: Icon(
                icon,
                color: WebColors.light,
              ),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: WebColors.darkPrimary),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/size_configs.dart';

class TimelineStart extends StatefulWidget {
  const TimelineStart({Key? key}) : super(key: key);

  @override
  State<TimelineStart> createState() => _TimelineStartState();
}

class _TimelineStartState extends State<TimelineStart> {
  late final Size size;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    double fixedIconSizeBorder = FixedIconSizeTimeline - 10;
    double fixedIconSizeTop = (CardHeightTimeline / 2) + 10;

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 48),
          child: Container(
            margin: const EdgeInsets.all(32),
            child: SizedBox(
              width: size.width,
              height: CardHeightTimeline,
            ),
          ),
        ),
        Positioned(
          top: fixedIconSizeTop,
          left: 35.0,
          bottom: 0.0,
          child: Container(
            height: 50.0,
            width: 1.0,
            color: WebColors.darkPrimary,
          ),
        ),
        Positioned(
          top: fixedIconSizeTop,
          left: 20.0,
          child: Container(
            height: fixedIconSizeBorder,
            width: fixedIconSizeBorder,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: WebColors.light),
            child: Container(
              margin: const EdgeInsets.all(5.0),
              height: FixedIconSizeTimeline,
              width: FixedIconSizeTimeline,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: WebColors.darkPrimary),
            ),
          ),
        )
      ],
    );
  }
}

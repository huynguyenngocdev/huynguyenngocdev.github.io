import 'package:flutter/material.dart';
import 'package:huy_resume/utils/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/text_defaults/text_page_title.dart';
import 'package:huy_resume/views/widgets/contents/milestones/milestone_job.dart';
import 'package:huy_resume/views/widgets/timeline/timeline_end.dart';
import 'package:huy_resume/views/widgets/timeline/timeline_start.dart';
import 'package:tuple/tuple.dart';

class ExperienceContent extends StatefulWidget {
  const ExperienceContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ExperienceContentState();
}

class ExperienceContentState extends State<ExperienceContent> {
  late final Size size;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.light,
      height: size.height,
      padding: const EdgeInsets.all(32),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const PageTitleText(Experience_Title),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                controller: ScrollController(),
                physics: const AlwaysScrollableScrollPhysics(),
                children: const <Widget>[
                  TimelineStart(),
                  MilestoneJob(
                    wInDF,
                    buttons: [],
                  ),
                  MilestoneJob(
                    wInUmbala,
                    buttons: [],
                  ),
                  MilestoneJob(wInCES, buttons: [
                    Tuple2(AppIcons.link, LinkProject_CES),
                  ]),
                  TimelineEnd(),
                ],
              ),
            ),
          ]),
    );
  }
}

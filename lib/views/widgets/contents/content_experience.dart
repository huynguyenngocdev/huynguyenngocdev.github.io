import 'package:flutter/material.dart';
import 'package:huy_resume/utils/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/text_defaults/text_page_title.dart';
import 'package:huy_resume/views/widgets/contents/milestones/milestone_article.dart';
import 'package:huy_resume/views/widgets/contents/milestones/milestone_news.dart';
import 'package:huy_resume/views/widgets/timeline/timeline_end.dart';
import 'package:huy_resume/views/widgets/timeline/timeline_start.dart';
import 'package:tuple/tuple.dart';

class BackgroundContent extends StatefulWidget {
  const BackgroundContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BackgroundContentState();
}

class BackgroundContentState extends State<BackgroundContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.light,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(32),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const PageTitleText(Milestone_Title),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                controller: ScrollController(),
                physics: const AlwaysScrollableScrollPhysics(),
                children: const <Widget>[
                  TimelineStart(),
                  MilestoneArticle(
                    mClinicaGoes1stFlutterPHEvent,
                    buttons: [
                      Tuple2(AppIcons.link,
                          "https://medium.com/mclinica-tech/mclinica-goes-to-flutter-philippines-1st-ever-study-jam-db987b868adb"),
                    ],
                  ),
                  MilestoneNews(
                    fdaToUseEDSS,
                    buttons: [
                      Tuple2(AppIcons.link,
                          "https://www.rappler.com/science-nature/life-health/215910-pharmacy-logbooks-digital-2020-mclinica-food-and-drug-administration"),
                    ],
                  ),
                  MilestoneNews(
                    digitalLogbookEDSS,
                    buttons: [
                      Tuple2(AppIcons.link,
                          "https://www.bworldonline.com/fda-to-use-mclinica-app-to-monitor-prescriptions/"),
                    ],
                  ),
                  TimelineEnd(),
                ],
              ),
            ),
          ]),
    );
  }
}

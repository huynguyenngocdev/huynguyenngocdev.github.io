import 'package:flutter/material.dart';
import 'package:huy_resume/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/views/contents/milestones/milestone_article.dart';
import 'package:huy_resume/views/contents/milestones/milestone_news.dart';
import 'package:huy_resume/views/text_defaults/text_page_title.dart';
import 'package:tuple/tuple.dart';

class BackgroundContent extends StatefulWidget {
  const BackgroundContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BackgroundContentState();
}

class BackgroundContentState extends State<BackgroundContent> {
  _timelineStart() {
    double cardHeight = 50.0;
    double fixedIconSize = 40.0;

    double fixedIconSizeBorder = fixedIconSize - 10;
    double fixedIconSizeTop = (cardHeight / 2) + 10;

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 48),
          child: Container(
            margin: const EdgeInsets.all(32),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: cardHeight,
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
              height: fixedIconSize,
              width: fixedIconSize,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: WebColors.darkPrimary),
            ),
          ),
        )
      ],
    );
  }

  _timelineEnd() {
    double cardHeight = 50.0;
    double fixedIconSize = 40.0;

    double fixedIconSizeBorder = fixedIconSize - 10;
    double fixedIconSizeTop = (cardHeight / 2) + 10;

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 48),
          child: Container(
            margin: const EdgeInsets.all(32),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: cardHeight,
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 35.0,
          bottom: fixedIconSizeTop,
          child: Container(
            height: 50.0,
            width: 1.0,
            color: WebColors.darkPrimary,
          ),
        ),
        Positioned(
          bottom: fixedIconSizeTop,
          left: 20.0,
          child: Container(
            height: fixedIconSizeBorder,
            width: fixedIconSizeBorder,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: WebColors.light),
            child: Container(
              margin: const EdgeInsets.all(5.0),
              height: fixedIconSize,
              width: fixedIconSize,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: WebColors.darkPrimary),
            ),
          ),
        )
      ],
    );
  }

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
              flex: 1,
              child: ListView(
                children: <Widget>[
                  _timelineStart(),
                  const MilestoneArticle(
                    mClinicaGoes1stFlutterPHEvent,
                    buttons: [
                      Tuple2(AppIcons.link,
                          "https://medium.com/mclinica-tech/mclinica-goes-to-flutter-philippines-1st-ever-study-jam-db987b868adb"),
                    ],
                  ),
                  const MilestoneNews(
                    fdaToUseEDSS,
                    buttons: [
                      Tuple2(AppIcons.link,
                          "https://www.rappler.com/science-nature/life-health/215910-pharmacy-logbooks-digital-2020-mclinica-food-and-drug-administration"),
                    ],
                  ),
                  const MilestoneNews(
                    digitalLogbookEDSS,
                    buttons: [
                      Tuple2(AppIcons.link,
                          "https://www.bworldonline.com/fda-to-use-mclinica-app-to-monitor-prescriptions/"),
                    ],
                  ),
                  _timelineEnd(),
                ],
              ),
            ),
          ]),
    );
  }
}

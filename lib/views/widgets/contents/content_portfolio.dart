import 'package:flutter/material.dart';
import 'package:huy_resume/utils/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/text_defaults/text_page_title.dart';
import 'package:huy_resume/views/widgets/contents/milestones/milestone_projects.dart';
import 'package:huy_resume/views/widgets/timeline/timeline_end.dart';
import 'package:huy_resume/views/widgets/timeline/timeline_start.dart';
import 'package:tuple/tuple.dart';

class PortfolioContent extends StatefulWidget {
  const PortfolioContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PortfolioContentState();
}

class PortfolioContentState extends State<PortfolioContent> {
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
            const PageTitleText(Portfolio_Title),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                controller: ScrollController(),
                physics: const AlwaysScrollableScrollPhysics(),
                children: const <Widget>[
                  TimelineStart(),
                  MilestoneProjects(
                    pLittleStar,
                    buttons: [
                      Tuple2(AppIcons.link, LinkProjectLittleStar),
                    ],
                  ),
                  MilestoneProjects(
                    pTotoroMilkTea,
                    buttons: [
                      Tuple2(AppIcons.link, LinkTotoroMilkTeaWeb),
                      Tuple2(AppIcons.link, LinkTMTSourceWeb),
                      Tuple2(AppIcons.link, LinkTMTSourceAPI),
                    ],
                  ),
                  MilestoneProjects(
                    pPNVWeb,
                    buttons: [
                      Tuple2(AppIcons.link, LinkPNVWeb),
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

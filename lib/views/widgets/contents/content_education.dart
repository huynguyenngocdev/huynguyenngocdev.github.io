import 'package:flutter/material.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/text_defaults/text_page_title.dart';
import 'package:huy_resume/views/widgets/contents/milestones/milestone_article.dart';
import 'package:huy_resume/views/widgets/timeline/timeline_end.dart';
import 'package:huy_resume/views/widgets/timeline/timeline_start.dart';

class EducationContent extends StatefulWidget {
  const EducationContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => EducationContentState();
}

class EducationContentState extends State<EducationContent> {
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
            const PageTitleText(Education_Title),
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
                    Education_1,
                    buttons: [
                      // Tuple2(AppIcons.link,
                      //     "https://www.passerellesnumeriques.org/"),
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

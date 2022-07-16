import 'package:flutter/material.dart';
import 'package:huy_resume/views/contents/content_awards.dart';
import 'package:huy_resume/views/contents/content_background.dart';
import 'package:huy_resume/views/contents/content_home.dart';
import 'package:huy_resume/views/contents/content_skills.dart';

class ContentFrame extends StatelessWidget {
  int contentId;

  ContentFrame(this.contentId, {Key? key}) : super(key: key);
  Widget _defineContent(int contentId) {
    switch (contentId) {
      case 1:
        return SkillsContent();
      case 2:
        return AwardsContent();
      case 3:
        return BackgroundContent();
      default:
        return HomeContent();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 450),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(
                scale: animation, child: child, alignment: Alignment.topCenter),
        child: _defineContent(contentId));
  }
}

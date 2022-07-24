import 'package:flutter/material.dart';
import 'package:huy_resume/utils/page.dart';
import 'package:huy_resume/views/widgets/contents/content_achievements.dart';
import 'package:huy_resume/views/widgets/contents/content_education.dart';
import 'package:huy_resume/views/widgets/contents/content_experience.dart';
import 'package:huy_resume/views/widgets/contents/content_home.dart';
import 'package:huy_resume/views/widgets/contents/content_portfolio.dart';
import 'package:huy_resume/views/widgets/contents/content_skills.dart';

class ContentFrame extends StatelessWidget {
  const ContentFrame(this.pageSelected, {Key? key}) : super(key: key);
  final PAGE pageSelected;
  Widget _defineContent(PAGE pageSelected) {
    switch (pageSelected) {
      case PAGE.skills:
        return const SkillsContent();
      case PAGE.achievements:
        return const AchievementsContent();
      case PAGE.education:
        return const EducationContent();
      case PAGE.experience:
        return const ExperienceContent();
      case PAGE.portfolio:
        return const PortfolioContent();
      default:
        return const HomeContent();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 350),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(
                scale: animation, child: child, alignment: Alignment.topCenter),
        child: _defineContent(pageSelected));
  }
}

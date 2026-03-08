import 'package:flutter/material.dart';
import 'package:huy_resume/utils/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/responsive_layout.dart';
import 'package:huy_resume/utils/text_defaults/text_item_title.dart';
import 'package:huy_resume/utils/text_defaults/text_normal.dart';
import 'package:huy_resume/utils/text_defaults/text_page_title.dart';
import 'package:huy_resume/views/widgets/buttons/button_list.dart';
import 'package:tuple/tuple.dart';

class AchievementItem {
  const AchievementItem({
    required this.value,
    required this.imagePath,
    required this.buttons,
  });

  final List value;
  final String imagePath;
  final List<Tuple2<IconData, String>> buttons;
}

class AchievementsContent extends StatelessWidget {
  const AchievementsContent({super.key});

  Widget _awardItem(AchievementItem item) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ItemTitleText(item.value[0]),
            NormalText(
              item.value[1],
              fontStyle: FontStyle.italic,
            ),
            const SizedBox(
              height: 16,
            ),
            if (item.imagePath.isNotEmpty) ...<Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  item.imagePath,
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
            NormalText(item.value[2]),
            const SizedBox(
              height: 8,
            ),
            ButtonList(item.buttons),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.light,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(32),
      child: Builder(
        builder: (context) {
          final isLargeScreen = ResponsiveLayout.isLargeScreen(context);
          final achievementItems = <AchievementItem>[
            const AchievementItem(
              value: achievementStartupWheel,
              imagePath: AchievementImageStartupWheel,
              buttons: [Tuple2(AppIcons.link, LinkStartupWheel)],
            ),
            const AchievementItem(
              value: achievementYoungTalent,
              imagePath: AchievementImageYoungTalent,
              buttons: [Tuple2(AppIcons.link, LinkYoungTalentAward)],
            ),
            const AchievementItem(
              value: achievementSaoVangCongHien,
              imagePath: AchievementImageSaoVangCongHien,
              buttons: [Tuple2(AppIcons.link, LinkSaoVangCongHien)],
            ),
            const AchievementItem(
              value: achievementMatterTop12,
              imagePath: AchievementImageMatterTop12,
              buttons: [Tuple2(AppIcons.link, LinkMatterTop12)],
            ),
            const AchievementItem(
              value: certificateFlutterBootcamp,
              imagePath: AchievementImageFlutterBootcamp,
              buttons: [
                Tuple2(AppIcons.article_alt, LinkFlutterBootcampCertificate)
              ],
            ),
            const AchievementItem(
              value: certificateCESInternship,
              imagePath: AchievementImageCESInternship,
              buttons: [
                Tuple2(AppIcons.article_alt, LinkCESInternshipCertificate)
              ],
            ),
          ];

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const PageTitleText(Achivements_Title),
              const SizedBox(
                height: 12,
              ),
              ClipRRect(
                child: Image.asset(
                  "assets/images/working-developer.gif",
                  width: double.infinity,
                  height: isLargeScreen ? 280 : 220,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 1,
                child: ListView(
                  controller: ScrollController(),
                  children: achievementItems
                      .map((item) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: _awardItem(item),
                          ))
                      .toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

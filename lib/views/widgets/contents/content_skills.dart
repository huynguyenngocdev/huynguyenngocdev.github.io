import 'package:flutter/material.dart';
import 'package:huy_resume/utils/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/responsive_layout.dart';
import 'package:huy_resume/utils/text_defaults/text_item_title.dart';
import 'package:huy_resume/utils/text_defaults/text_normal.dart';
import 'package:huy_resume/utils/text_defaults/text_page_title.dart';

class SkillsContent extends StatefulWidget {
  const SkillsContent({Key? key}) : super(key: key);

  @override
  State<SkillsContent> createState() => _SkillsContentState();
}

class _SkillsContentState extends State<SkillsContent> {
  double widthCard = 200;
  @override
  void didChangeDependencies() {
    final sizeScreen = MediaQuery.of(context).size;

    setState(() {
      widthCard = sizeScreen.width;
      //64 = padding left+right
      //15 * n = space_each_card * num_of_card_in_row
      if (ResponsiveLayout.isLargeScreen(context)) {
        widthCard = (sizeScreen.width - DrawerWidth - 64 - 15 * 3) / 3;
      }
      if (ResponsiveLayout.isMediumScreen(context)) {
        widthCard = (sizeScreen.width - DrawerWidth - 64 - 15 * 2) / 2;
      }
    });
    super.didChangeDependencies();
  }

  _cardItems(IconData icon, List value) {
    return Card(
      elevation: 5,
      child: Container(
        width: widthCard,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: const BoxDecoration(
                      color: WebColors.light, shape: BoxShape.circle),
                  child: Icon(
                    icon,
                    color: WebColors.primary,
                    size: 32,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(child: ItemTitleText(value[0])),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            NormalText(value[1]),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: WebColors.light,
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const PageTitleText(Skills_Title),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.spaceBetween,
              children: <Widget>[
                _cardItems(AppIcons.phone_android, Skills_1),
                _cardItems(AppIcons.web, Skills_2),
                _cardItems(AppIcons.cogs, Skills_3),
                _cardItems(AppIcons.devices_other, Skills_4),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:huy_resume/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/views/responsive_layout.dart';
import 'package:huy_resume/views/text_defaults/text_item_title.dart';
import 'package:huy_resume/views/text_defaults/text_normal.dart';
import 'package:huy_resume/views/text_defaults/text_page_title.dart';

class SkillsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _cardItems(IconData icon, List value) {
      return SizedBox(
        width: 200,
        height: 100,
        child: Card(
          elevation: 3,
          child: Container(
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
                    ItemTitleText(value[0]),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                NormalText(value[1]),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      color: WebColors.light,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageTitleText(Skills_Title),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            flex: 1,
            child: GridView.count(
              shrinkWrap: false,
              padding: const EdgeInsets.all(4.0),
              mainAxisSpacing: 4.0,
              childAspectRatio: 2,
              crossAxisSpacing: 32.0,
              crossAxisCount: (ResponsiveLayout.isLargeScreen(context) ? 3 : 1),
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

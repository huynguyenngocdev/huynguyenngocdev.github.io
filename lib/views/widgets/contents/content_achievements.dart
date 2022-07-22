import 'package:flutter/material.dart';
import 'package:huy_resume/utils/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/text_defaults/text_item_title.dart';
import 'package:huy_resume/utils/text_defaults/text_normal.dart';
import 'package:huy_resume/utils/text_defaults/text_page_title.dart';
import 'package:huy_resume/views/widgets/buttons/button_list.dart';
import 'package:tuple/tuple.dart';

class AchievementsContent extends StatelessWidget {
  const AchievementsContent({Key? key}) : super(key: key);

  _awardItem(List value, List buttons) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ItemTitleText(value[0]),
            NormalText(
              value[1],
              fontStyle: FontStyle.italic,
            ),
            const SizedBox(
              height: 16,
            ),
            NormalText(value[2]),
            const SizedBox(
              height: 8,
            ),
            ButtonList(buttons),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const PageTitleText(Achivements_Title),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            flex: 1,
            child: ListView(
              controller: ScrollController(),
              children: <Widget>[
                _awardItem(startUpWheel, [
                  const Tuple2(AppIcons.link,
                      "https://startupwheel.vn/vi/cong-bo-top-100-startup-wheel-2022-vietnam/")
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}

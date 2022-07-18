import 'package:flutter/material.dart';
import 'package:huy_resume/app_icons.dart';
import 'package:huy_resume/utils/constants.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/views/buttons/button_list.dart';
import 'package:huy_resume/views/text_defaults/text_item_title.dart';
import 'package:huy_resume/views/text_defaults/text_normal.dart';
import 'package:huy_resume/views/text_defaults/text_page_title.dart';
import 'package:tuple/tuple.dart';

class AwardsContent extends StatelessWidget {
  const AwardsContent({Key? key}) : super(key: key);

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
          const PageTitleText(Awards_Title),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                _awardItem(angelhackJuicebox, [
                  const Tuple2(AppIcons.link,
                      "https://e27.co/angelhack-manila-winner-has-a-futuristic-iot-juicebox-for-a-healthy-you-20150813/")
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}

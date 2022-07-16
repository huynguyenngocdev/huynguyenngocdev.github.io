import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';

class ButtonList extends StatelessWidget {
  ButtonList(this.value);

  List value;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: value.map((hash) {
          return SizedBox(
            width: 40.0,
            height: 40.0,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              // onHover: (hover) {  setState(() { _iconHoverState[id] = hover; }); },
              onHover: (hover) {},
              onTap: () {},
              child: RaisedButton(
                elevation: 0,
                // color: (_iconHoverState[id] ? bgcolor : WebColors.lightPrimary),
                color: WebColors.lightPrimary,
                onPressed: () {
                  js.context.callMethod("open", [hash.item2]);
                },
                padding: const EdgeInsets.all(0.0),
                child: IconButton(
                  onPressed: null,
                  icon: Icon(hash.item1, color: WebColors.light),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          );
        }).toList());
  }
}

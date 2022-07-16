import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/views/mobile_page.dart';
import 'package:huy_resume/views/responsive_layout.dart';
import 'package:huy_resume/views/web_page.dart';

void main() => runApp(const WebApp());

class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Huy NGUYEN NGOC',
        theme: ThemeData(
            primaryColor: WebColors.primary,
            appBarTheme: const AppBarTheme(color: WebColors.primary)),
        // home: WebPage(),
        home: const ResponsiveLayout(
          largeScreen: WebPage(),
          mediumScreen: MobilePage(),
          smallScreen: MobilePage(),
        ));
  }
}

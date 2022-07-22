import 'package:flutter/material.dart';
import 'package:huy_resume/utils/default_colors.dart';
import 'package:huy_resume/utils/responsive_layout.dart';
import 'package:huy_resume/views/pages/mobile_page.dart';
import 'package:huy_resume/views/pages/web_page.dart';

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
        debugShowCheckedModeBanner: false,
        home: const ResponsiveLayout(
          largeScreen: WebPage(),
          mediumScreen: MobilePage(),
          smallScreen: MobilePage(),
        ));
  }
}

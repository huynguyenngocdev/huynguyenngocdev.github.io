import 'package:flutter/material.dart';

class WebColors {
  WebColors._privateConstructor();
  static final WebColors _instance = WebColors._privateConstructor();
  static WebColors get instance {
    return _instance;
  }

  static const primary = Color(0xFF1B263B);
  static const darkPrimary = Color(0xFF0D1B2A);
  static const lightPrimary = Color(0xFF415A77);
  static const light = Color(0xFFF1F2F3);
  static const dark = Color(0xFF222222);
}

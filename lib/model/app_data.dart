import 'package:flutter/material.dart';
import 'package:wifi_share/pages/create_code.dart';
import 'package:wifi_share/pages/open_image.dart';
import 'package:wifi_share/pages/wifi_scan.dart';
import 'package:wifi_share/pages/wifi_share.dart';

class AppState {
  final int currentTabIndex;
  final List<Widget> pages = const [
    WifiSharePage(),
    WifiScanPage(),
    CreateCodePage(),
    OpenImagePage()
  ];
  final String title;

  AppState({
    required this.currentTabIndex,
    required this.title,
  });
}

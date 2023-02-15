import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:web_navigation/screens/screen1.dart';
import 'package:web_navigation/screens/screen2.dart';
import 'package:web_navigation/screens/screen3.dart';
import 'package:web_navigation/screens/screen4.dart';

class RouterMasterNavigatorEvents {
  static const String screen1 = "/home/screen1";
  static const String screen2 = "/home/screen2";
  static const String screen3 = "/home/screen3";
  static const String screen4 = "/home/screen4";
}

listMastersRouterOnGenerate(RouteSettings settings) {
  String currentUrl = settings.name!.split("?")[0];

  switch (currentUrl) {
    case RouterMasterNavigatorEvents.screen1:
      return GetPageRoute(
        transitionDuration: const Duration(seconds: 0),
        settings: settings,
        routeName: RouterMasterNavigatorEvents.screen1,
        page: () => const ScreenOne(),
      );
    case RouterMasterNavigatorEvents.screen2:
      return GetPageRoute(
        transitionDuration: const Duration(seconds: 0),
        settings: settings,
        routeName: RouterMasterNavigatorEvents.screen2,
        page: () => const ScreenTwo(),
      );
    case RouterMasterNavigatorEvents.screen3:
      return GetPageRoute(
        transitionDuration: const Duration(seconds: 0),
        settings: settings,
        routeName: RouterMasterNavigatorEvents.screen3,
        page: () => const ScreenThree(),
      );
    case RouterMasterNavigatorEvents.screen4:
      return GetPageRoute(
        transitionDuration: const Duration(seconds: 0),
        settings: settings,
        routeName: RouterMasterNavigatorEvents.screen4,
        page: () => const ScreenFour(),
      );
  }
}

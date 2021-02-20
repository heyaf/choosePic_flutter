import 'dart:core';
import 'package:HYFFoodPictures/ui/pages/detail/detail.dart';

import '../../ui/pages/detail_page.dart/homemealpage.dart';

import '../../ui/pages/main/HYFmianScreen.dart';
import 'package:flutter/material.dart';

class HYFRoute {
  static final String initinalRoute = HYFMainScreen.routeName;
  static final Map<String, WidgetBuilder> routers = {
    HYFMainScreen.routeName: (context) => HYFMainScreen(),
    homemealPage.routeName: (context) => homemealPage(),
    HYDetailScreen.routeName: (context) => HYDetailScreen()
  };

  static final RouteFactory generateRoute = (settings) {};

  static final RouteFactory unKnownRoute = (settings) {};
}

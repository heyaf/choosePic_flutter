import 'dart:core';
import '../../ui/pages/main/HYFmianScreen.dart';
import 'package:flutter/material.dart';

class HYFRoute {
  static final String initinalRoute = HYFMainScreen.routeName;

  static final Map<String, WidgetBuilder> routers = {
    HYFMainScreen.routeName: (context) => HYFMainScreen(),
  };

  static final RouteFactory generateRoute = (settings) {};

  static final RouteFactory unKnownRoute = (settings) {};
}

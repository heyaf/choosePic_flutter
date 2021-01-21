import 'package:flutter/material.dart';
import './ui/shared/app_theme.dart';
import './core/router/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'F美食卡片',
      theme: Apptheme.normalTheme,
      initialRoute: HYFRoute.initinalRoute,
      routes: HYFRoute.routers,
      onGenerateRoute: HYFRoute.generateRoute,
      onUnknownRoute: HYFRoute.unKnownRoute,
    );
  }
}

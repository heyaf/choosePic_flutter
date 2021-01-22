import 'package:flutter/material.dart';
import './ui/shared/app_theme.dart';
import './core/router/route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 667),
        allowFontScaling: false,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'F美食卡片',
          theme: Apptheme.normalTheme,
          initialRoute: HYFRoute.initinalRoute,
          routes: HYFRoute.routers,
          onGenerateRoute: HYFRoute.generateRoute,
          onUnknownRoute: HYFRoute.unKnownRoute,
        ));
  }
}

import 'package:choosePic_flutter/core/viewmodel/meal_view_model.dart';
import 'package:choosePic_flutter/core/viewmodel/mealfav_viewModel.dart';
import 'package:dokit/dokit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './ui/shared/app_theme.dart';
import './core/router/route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  DoKit.runApp(
    app: DoKitApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => HYFMealViewModel()),
          ChangeNotifierProvider(create: (context) => HYFmealfavoViewModel()),
        ],
        child: MyApp(),
      ),
    ),
    useInRelease: true,
  );
  // runApp(MultiProvider(
  //   providers: [
  //     ChangeNotifierProvider(create: (context) => HYFMealViewModel()),
  //     ChangeNotifierProvider(create: (context) => HYFmealfavoViewModel()),
  //   ],
  //   child: MyApp(),
  // ));
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
          title: '美食卡片',
          theme: Apptheme.normalTheme,
          initialRoute: HYFRoute.initinalRoute,
          routes: HYFRoute.routers,
          onGenerateRoute: HYFRoute.generateRoute,
          onUnknownRoute: HYFRoute.unKnownRoute,
        ));
  }
}

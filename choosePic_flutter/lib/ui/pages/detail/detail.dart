import 'package:choosePic_flutter/core/model/mealsModel.dart';
import 'package:choosePic_flutter/ui/pages/detail/detail_content.dart';
import 'package:choosePic_flutter/ui/pages/detail/detail_float_button.dart';
import 'package:flutter/material.dart';

class HYDetailScreen extends StatelessWidget {
  static const String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as HYFMealsModel;
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: Center(
          child: detailContentWidget(),
        ),
        floatingActionButton: HYFFloatButton(meal));
  }
}

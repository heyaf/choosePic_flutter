import 'package:choosePic_flutter/core/model/home_category.dart';
import 'package:choosePic_flutter/ui/pages/detail_page.dart/mealcontent.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class homemealPage extends StatelessWidget {
  static const String routeName = '/meal';

  @override
  Widget build(BuildContext context) {
    final catagory =
        ModalRoute.of(context).settings.arguments as home_categoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text('${catagory.title}'),
      ),
      body: HYFMealContent(),
    );
  }
}

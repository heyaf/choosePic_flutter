import 'package:choosePic_flutter/core/viewmodel/meal_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/model/home_category.dart';
import '../../widgets/meals_widget.dart';

class HYFMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catagory =
        ModalRoute.of(context).settings.arguments as home_categoryModel;
    return Consumer<HYFMealViewModel>(builder: (context, mealMV, child) {
      final meals = mealMV.meals
          .where((element) => element.categories.contains(catagory.id))
          .toList();

      print(catagory);

      return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) {
            return HYFMealItem(meals[index]);
          });
    });
  }
}

import 'package:choosePic_flutter/core/model/mealsModel.dart';
import 'package:choosePic_flutter/core/viewmodel/mealfav_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HYFFloatButton extends StatelessWidget {
  final HYFMealsModel _model;
  HYFFloatButton(this._model);
  @override
  Widget build(BuildContext context) {
    return Consumer<HYFmealfavoViewModel>(builder: (context, hyfmealVM, child) {
      final iconData =
          hyfmealVM.isFavMeal(_model) ? Icons.favorite : Icons.favorite_border;
      final iconColor =
          hyfmealVM.isFavMeal(_model) ? Colors.redAccent : Colors.black;
      return FloatingActionButton(
          backgroundColor: Colors.yellowAccent,
          child: Icon(
            iconData,
            color: iconColor,
          ),
          onPressed: () => hyfmealVM.handleFavMeal(_model));
    });
  }
}

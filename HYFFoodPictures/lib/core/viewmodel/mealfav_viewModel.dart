import 'package:HYFFoodPictures/core/model/mealsModel.dart';
import 'package:flutter/material.dart';
import '../model/mealsModel.dart';

class HYFmealfavoViewModel extends ChangeNotifier {
  List<HYFMealsModel> _mealfav = [];

  List<HYFMealsModel> get mealfav {
    return _mealfav;
  }

  void addFavMeal(HYFMealsModel meal) {
    _mealfav.add(meal);
    notifyListeners();
  }

  void removeFavMeal(HYFMealsModel meal) {
    _mealfav.remove(meal);
    notifyListeners();
  }

  bool isFavMeal(HYFMealsModel meal) {
    return _mealfav.contains(meal) ? true : false;
  }

  void handleFavMeal(HYFMealsModel meal) {
    if (isFavMeal(meal)) {
      removeFavMeal(meal);
    } else {
      addFavMeal(meal);
    }
  }
}

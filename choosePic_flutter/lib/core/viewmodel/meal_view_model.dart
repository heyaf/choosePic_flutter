import 'package:choosePic_flutter/core/network/meal_request.dart';
import 'package:flutter/material.dart';

import '../../core/model/mealsModel.dart';

class HYFMealViewModel extends ChangeNotifier {
  List<HYFMealsModel> _meals = [];

  List<HYFMealsModel> get meals {
    return _meals;
  }

  HYFMealViewModel() {
    HYFMealRequest.getmealData().then((value) {
      _meals = value;
      notifyListeners();
    });
  }
}

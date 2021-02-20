import 'package:HYFFoodPictures/core/model/mealsModel.dart';

import 'http_request.dart';

class HYFMealRequest {
  static Future<List<HYFMealsModel>> getmealData() async {
    final url = 'meal';
    final result = await HttpRequest.request(url);

    final mealArray = result['meal'];

    List<HYFMealsModel> mealList = [];

    for (var json in mealArray) {
      mealList.add(HYFMealsModel.fromJson(json));
    }
    return mealList;
  }
}

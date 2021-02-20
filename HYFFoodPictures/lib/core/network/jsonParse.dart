import 'dart:convert';

import 'package:HYFFoodPictures/core/model/home_category.dart';
import 'package:flutter/services.dart';

class jsonParse {
  static Future<List<home_categoryModel>> getjsonParse() async {
    //1.加载json文件
    final jsonString = await rootBundle.loadString('assets/json/category.json');

    //将jsonString转为map/list
    final result = json.decode(jsonString);

    //将map中的内容转为对象（model）
    final List list = result["category"];

    List<home_categoryModel> homecategorys = [];

    for (var json in list) {
      homecategorys.add(home_categoryModel.fromJson(json));
    }
    return homecategorys;
  }
}

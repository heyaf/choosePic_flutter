import 'package:flutter/material.dart';

class home_categoryModel {
  String id;
  String title;
  String color;
  Color finaColor;

  home_categoryModel({this.id, this.title, this.color});

  home_categoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
    //将color字符串转为16进制数字
    final colorint = int.parse(color, radix: 16);
    //加入透明度
    finaColor = Color(colorint | 0xFF000000);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}

import 'package:choosePic_flutter/ui/pages/favoritepages/favoritepages.dart';
import 'package:choosePic_flutter/ui/pages/homepages/homepages.dart';
import 'package:flutter/material.dart';

final List<Widget> pages = [HomePages(), FavoritePages()];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(title: Text('首页'), icon: Icon(Icons.home)),
  BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('收藏'))
];

import 'package:flutter/material.dart';

class FavoritePages extends StatefulWidget {
  FavoritePages({Key key}) : super(key: key);

  @override
  _FavoritePagesState createState() => _FavoritePagesState();
}

class _FavoritePagesState extends State<FavoritePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的收藏'),
      ),
      body: Center(
        child: Text('我的收藏'),
      ),
    );
  }
}

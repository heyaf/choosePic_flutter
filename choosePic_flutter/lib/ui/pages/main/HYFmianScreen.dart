import 'package:flutter/material.dart';
import 'initialize_item.dart';

class HYFMainScreen extends StatefulWidget {
  static const String routeName = '/';
  @override
  _HYFMainScreenState createState() => _HYFMainScreenState();
}

class _HYFMainScreenState extends State<HYFMainScreen> {
  int _currentPages = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentPages,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPages,
        selectedItemColor: Color.fromRGBO(51, 51, 51, 1),
        unselectedItemColor: Color.fromRGBO(102, 102, 102, 1),
        items: items,
        onTap: (value) {
          setState(() {
            _currentPages = value;
          });
        },
      ),
    );
  }
}

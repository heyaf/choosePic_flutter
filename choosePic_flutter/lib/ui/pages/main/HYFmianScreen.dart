import 'package:flutter/material.dart';
import 'initialize_item.dart';
import '../../../core/const/constValue.dart';

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
        // selectedItemColor: constValue.kMainColor,
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HYOperationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;

  HYOperationItem(this._icon, this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _icon,
          SizedBox(
            width: 3,
          ),
          Text(_title)
        ],
      ),
    );
  }
}

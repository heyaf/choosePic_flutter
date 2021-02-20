import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HYFHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(250),
      child: Drawer(
        child: Column(
          children: [
            buildHeaderStart(),
            buildSecContainer(),
            buildThrContainer(context)
          ],
        ),
      ),
    );
  }

  //头部
  Widget buildHeaderStart() {
    return Container(
      color: Colors.yellow[700],
      height: ScreenUtil().setHeight(80),
      child: Center(
        child: Text(
          '开始',
          style: TextStyle(
              fontSize: ScreenUtil().setSp(24), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildSecContainer() {
    return InkWell(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 10, 5),
        child: Row(
          children: [
            Icon(
              Icons.restaurant,
              color: Colors.grey[600],
              size: 20.0,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              '进餐',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(16),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      onTap: () {
        print('进餐');
      },
    );
  }

  Widget buildThrContainer(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
        child: Row(
          children: [
            Icon(
              Icons.settings,
              color: Colors.grey[600],
              size: 20.0,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              '过滤',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(16),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      onTap: () {
        print('点击过滤');
        Navigator.of(context).pop();
      },
    );
  }
}

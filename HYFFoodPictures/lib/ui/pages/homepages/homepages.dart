import 'package:HYFFoodPictures/core/model/home_category.dart';
import 'package:HYFFoodPictures/core/network/jsonParse.dart';
import 'package:HYFFoodPictures/ui/pages/detail_page.dart/homemealpage.dart';
import 'package:HYFFoodPictures/ui/pages/homepages/homedrawDrawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  HomePages({Key key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  List<home_categoryModel> homecategoryList = [];
  void initState() {
    // TODO: implement initState
    super.initState();

    jsonParse.getjsonParse().then((value) {
      setState(() {
        homecategoryList.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('美食卡片'),
        ),
        drawer: HYFHomeDrawer(),
        body: GridView.builder(
            padding: EdgeInsets.all(20.0),
            itemCount: homecategoryList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 10,
                childAspectRatio: 1.5),
            itemBuilder: (BuildContext context, int index) {
              final Color bgColor = homecategoryList[index].finaColor;
              return InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          colors: [bgColor.withOpacity(.5), bgColor])),
                  child: Center(
                    child: Text(
                      homecategoryList[index].title,
                      style: TextStyle(fontSize: ScreenUtil().setSp(18)),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(homemealPage.routeName,
                      arguments: homecategoryList[index]);
                },
              );
            }));
  }
}

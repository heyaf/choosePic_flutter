import 'package:choosePic_flutter/core/model/mealsModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class detailContentWidget extends StatelessWidget {
  HYFMealsModel _meals;
  @override
  Widget build(BuildContext context) {
    _meals = ModalRoute.of(context).settings.arguments as HYFMealsModel;

    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return headerBanner();
        } else if (index == 1) {
          return builTitleWidget('制作材料');
        } else if (index == 2) {
          return buildMaterialWidget(context);
        } else if (index == 3) {
          return builTitleWidget('制作步骤');
        } else if (index == 4) {
          return buildStepWidget();
        }
      },
    );
  }

//头部图片
  Widget headerBanner() {
    return Container(
      child: Image.network(_meals.imageUrl),
    );
  }

//制作材料
  Widget buildMaterialWidget(BuildContext context) {
    final mealMaterial = _meals.ingredients;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width - 30,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: mealMaterial.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Card(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(mealMaterial[index]),
              ),
            ),
          );
        },
      ),
    );
  }

//制作步骤
  Widget buildStepWidget() {
    final mealMaterial = _meals.steps;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: mealMaterial.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: CircleAvatar(
                  child: Text("#${index + 1}"),
                ),
                title: Text(mealMaterial[index]));
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          }),
    );
  }

  //title组件
  Widget builTitleWidget(String titleStr) {
    return Container(
        padding: EdgeInsets.all(5),
        child: Text(
          titleStr,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: ScreenUtil().setSp(24), fontWeight: FontWeight.bold),
        ));
  }
}

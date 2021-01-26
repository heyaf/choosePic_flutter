import 'package:choosePic_flutter/core/model/mealsModel.dart';
import 'package:choosePic_flutter/core/viewmodel/mealfav_viewModel.dart';
import 'package:choosePic_flutter/ui/pages/detail/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import './operation_item.dart';

class HYFMealItem extends StatelessWidget {
  final HYFMealsModel _meal;
  HYFMealItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: <Widget>[buildBasicInfo(context), buildOperationInfo()],
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .pushNamed(HYDetailScreen.routeName, arguments: _meal);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          child: Image.network(
            _meal.imageUrl,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Container(
            width: 300,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(6)),
            child: Text(
              _meal.title,
              style: Theme.of(context)
                  .textTheme
                  .display3
                  .copyWith(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          HYOperationItem(Icon(Icons.schedule), "${_meal.duration}分钟"),
          HYOperationItem(Icon(Icons.restaurant), "简单"),
          buildCollectItem()
        ],
      ),
    );
  }

  Widget buildCollectItem() {
    return Consumer<HYFmealfavoViewModel>(
        builder: (context, hyffavVM, children) {
      final iconData =
          hyffavVM.isFavMeal(_meal) ? Icons.favorite : Icons.favorite_border;
      final iconColor = hyffavVM.isFavMeal(_meal) ? Colors.red : Colors.black;
      final textshow = hyffavVM.isFavMeal(_meal) ? '收藏' : '未收藏';
      return Container(
        // width: ScreenUtil().setWidth(40),
        child: InkWell(
          child: HYOperationItem(
              Icon(
                iconData,
                color: iconColor,
              ),
              textshow),
          onTap: () {
            hyffavVM.handleFavMeal(_meal);
          },
        ),
      );
    });
  }
}

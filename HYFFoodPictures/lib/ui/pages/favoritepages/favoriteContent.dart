import 'package:HYFFoodPictures/core/viewmodel/mealfav_viewModel.dart';
import 'package:HYFFoodPictures/ui/widgets/meals_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HYFFavContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HYFmealfavoViewModel>(
        builder: (context, hyffavVM, chidren) {
      if (hyffavVM.mealfav.length == 0) {
        return Center(
          child: Text('暂无收藏内容'),
        );
      }

      return ListView.builder(
        itemCount: hyffavVM.mealfav.length,
        itemBuilder: (BuildContext context, int index) {
          return HYFMealItem(hyffavVM.mealfav[index]);
        },
      );
    });
  }
}

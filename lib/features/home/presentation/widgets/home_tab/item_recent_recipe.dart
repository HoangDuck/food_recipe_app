import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ItemRecentRecipe extends StatelessWidget {
  final Meals meal;
  const ItemRecentRecipe({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Padding(
      padding: EdgeInsets.only(right: 16.sp),
      child: SizedBox(
        height: 191.sp,
        width: 124.sp,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.sp),
              child: Image.network(
                meal.strMealThumb ?? '',
                errorBuilder: (context, error, stackTrace) {
                  return Container();
                },
                width: 124.sp,
                height: 124.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 4.sp, right: 9.sp, top: 8.sp, bottom: 4.sp),
              child: SizedBox(
                height: 40.sp,
                child: Text(
                  meal.strMeal ?? '',
                  style: AppTextStyles.poppinsLabelBoldV2,
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.sp, right: 31.sp),
              child: Text(
                meal.strArea ?? '',
                style: AppTextStyles.poppinsTinyRegular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

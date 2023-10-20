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
      padding: EdgeInsets.only(right: 16.w),
      child: SizedBox(
        height: 191.h,
        width: 124.w,
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
                width: 124.w,
                height: 124.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 4.w, right: 9.w, top: 8.h, bottom: 4.h),
              child: SizedBox(
                height: 40.h,
                child: Text(
                  meal.strMeal ?? '',
                  style: AppTextStyles.poppinsLabelBoldV2,
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w, right: 31.w),
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

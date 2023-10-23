import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_bookmark_food.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories/meals.dart' as meal_by_category;

class ItemMealByCategory extends StatelessWidget {
  final meal_by_category.Meals meals;
  const ItemMealByCategory({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: SizedBox(
        height: 231.h,
        width: 150.w,
        child: Stack(
          children: [
            Positioned(
              bottom: 0.h,
              right: 0.w,
              left: 0.w,
              child: Container(
                height: 176.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: AppColors.cardFoodByCategory,
                  borderRadius: BorderRadius.circular(12.sp),
                ),
              ),
            ),
            Positioned(
              bottom: 121.h,
              right: 23.w,
              left: 24.w,
              child: Container(
                width: 110.w,
                height: 110.h,
                padding: EdgeInsets.all(1.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadowMealByCategory,
                      offset: Offset(
                        0.w,
                        8.0.h,
                      ),
                      blurRadius: 25.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 110.w,
                  height: 110.h,
                  child: CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage(meals.strMealThumb ?? '',),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 121.h,
              bottom: 70.h,
              right: 8.w,
              left: 8.w,
              child: Text(
                meals.strMeal??'',
                textAlign: TextAlign.center,
                style: AppTextStyles.poppinsLabelBoldV2,
              ),
            ),
            Positioned(
              bottom: 34.h,
              left: 12.w,
              child: Text(
                'Time',
                style: AppTextStyles.hintTextStyleSearchSmall,
              ),
            ),
            Positioned(
              bottom: 12.h,
              left: 12.w,
              child: Text(
                '10 Mins',
                style: AppTextStyles.poppinsLabelBoldV3,
              ),
            ),
            Positioned(
              bottom: 12.h,
              right: 12.w,
              child: IconBookmarkFood(
                onTap: () {

                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}

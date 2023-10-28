import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/home/presentation/widgets/icon_bookmark_food.dart';
import 'package:food_recipe_app/core/presentation/theme/app_colors.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:food_recipe_app/core/domain/models/categories/meal_by_categories/meals.dart' as meal_by_category;

class ItemMealByCategory extends StatelessWidget {
  final meal_by_category.Meals meals;
  const ItemMealByCategory({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: AspectRatio(
        aspectRatio: 150/231,
        child: Stack(
          children: [
            Positioned(
              bottom: 0.h,
              right: 0.w,
              left: 0.w,
              top: 55.h,
              child: AspectRatio(
                aspectRatio: 150/176,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.cardFoodByCategory,
                    borderRadius: BorderRadius.circular(12.sp),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0.h,
              right: 20.w,
              left: 20.w,
              child: Container(
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    meals.strMealThumb ?? '',
                  ),
                ),
              ),
            ),
            Positioned(
              // top: 121.h,
              right: 8.w,
              left: 8.w,
              top: 121.h,
              child: Text(
                meals.strMeal??'',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
                size: Size(16,16),
                padding: EdgeInsets.all(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

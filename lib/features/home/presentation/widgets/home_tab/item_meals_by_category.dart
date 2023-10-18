import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_bookmark_food.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories.dart' as meal_by_category;

class ItemMealByCategory extends StatelessWidget {
  final meal_by_category.Meals meals;
  const ItemMealByCategory({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Padding(
      padding: EdgeInsets.only(right: 16.sp),
      child: SizedBox(
        height: 231.sp,
        width: 150.sp,
        child: Stack(
          children: [
            Positioned(
              bottom: 0.sp,
              right: 0.sp,
              left: 0.sp,
              child: Container(
                height: 176.sp,
                width: 150.sp,
                decoration: BoxDecoration(
                  color: AppColors.cardFoodByCategory,
                  borderRadius: BorderRadius.circular(12.sp),
                ),
              ),
            ),
            Positioned(
              bottom: 121.sp,
              right: 23.sp,
              left: 24.sp,
              child: Container(
                width: 110.sp,
                height: 110.sp,
                padding: EdgeInsets.all(1.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.textHintColor,
                      offset: Offset(
                        0.sp,
                        55.0.sp,
                      ),
                      blurRadius: 100.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 110.sp,
                  height: 110.sp,
                  child: CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage(meals.strMealThumb ?? '',),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 121.sp,
              bottom: 70.sp,
              right: 8.sp,
              left: 8.sp,
              child: Text(
                meals.strMeal??'',
                textAlign: TextAlign.center,
                style: AppTextStyles.poppinsLabelBoldV2,
              ),
            ),
            Positioned(
              bottom: 34.sp,
              left: 12.sp,
              child: Text(
                'Time',
                style: AppTextStyles.hintTextStyleSearchSmall,
              ),
            ),
            Positioned(
              bottom: 12.sp,
              left: 12.sp,
              child: Text(
                '10 Mins',
                style: AppTextStyles.poppinsLabelBoldV3,
              ),
            ),
            Positioned(
              bottom: 12.sp,
              right: 12.sp,
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

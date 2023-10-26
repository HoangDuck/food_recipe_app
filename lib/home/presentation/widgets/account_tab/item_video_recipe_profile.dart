import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/home/presentation/widgets/icon_more_horiz_button.dart';
import 'package:food_recipe_app/home/presentation/widgets/icon_review_star.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/core/presentation/theme/app_colors.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';

class ItemVideoRecipe extends StatelessWidget {
  final Meals meal;
  const ItemVideoRecipe({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 335.w,
      child: Stack(
        children: [
          Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.sp),
                child: Image.network(
                  meal.strMealThumb ?? '',
                  fit: BoxFit.fitWidth,

                  errorBuilder: (context, error, stackTrace) {
                    return Container();
                  },
                ),
              )),
          Positioned(
            top: 8.h,
            left: 8.w,
            child: const IconReviewStar(
              rating: AppStrings.fourAndAHalf,
            ),
          ),
          Positioned(
            top: 8.h,
            right: 8.w,
            child: IconMoreHorizFood(
              onTap: () {},
            ),
          ),
          Positioned(
            left: 16.w,
            bottom: 42.h,
            child: SizedBox(
              height: 44.h,
              width: 170.w,
              child: Text(
                meal.strMeal ?? '',
                maxLines: 2,
                overflow: TextOverflow.fade,
                style: AppTextStyles.onBoardBold600,
              ),
            ),
          ),
          Positioned(
            left: 16.w,
            bottom: 16.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppStrings.twentyIngredients,
                  style: AppTextStyles.poppinsSmallRegular,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: VerticalDivider(
                    width: 1.w,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  AppStrings.fortyMinutes,
                  style: AppTextStyles.poppinsSmallRegular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

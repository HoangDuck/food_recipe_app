import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_more_horiz_button.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_review_star.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ItemVideoRecipe extends StatelessWidget {
  final Meals meal;
  const ItemVideoRecipe({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.sp,
      width: 335.sp,
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
            top: 8.sp,
            left: 8.sp,
            child: const IconReviewStar(
              rating: '4,5',
            ),
          ),
          Positioned(
            top: 8.sp,
            right: 8.sp,
            child: IconMoreHorizFood(
              onTap: () {},
            ),
          ),
          Positioned(
            left: 16.sp,
            bottom: 42.sp,
            child: SizedBox(
              height: 44.sp,
              width: 170.sp,
              child: Text(
                meal.strMeal ?? '',
                maxLines: 2,
                overflow: TextOverflow.fade,
                style: AppTextStyles.onBoardBold600,
              ),
            ),
          ),
          Positioned(
            left: 16.sp,
            bottom: 16.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppStrings.twentyIngredients,
                  style: AppTextStyles.poppinsSmallRegular,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.sp),
                  child: VerticalDivider(
                    width: 1.sp,
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

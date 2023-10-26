import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/domain/models/ingredients/ingredients.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ItemIngredient extends StatelessWidget {
  final Ingredients ingredient;
  const ItemIngredient({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Padding(
      padding: EdgeInsets.only(bottom: 12.w),
      child: Container(
        width: 335.w,
        height: 76.h,
        padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: AppColors.cardFoodByCategory,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 52.sp,
              height: 52.sp,
              padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 12.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                color: AppColors.white,
              ),
              child: Image.network(
                ingredient.imgIngredient ?? '',
                width: 28.w,
                height: 32.h,
                errorBuilder: (context,error,stackTrace){
                  return Image.asset(
                    ingredient.imgIngredient ?? '',
                    width: 28.w,
                    height: 32.h,
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w,top: 17.h,bottom: 13.w),
              child: Text(ingredient.nameIngredient??'',style: AppTextStyles.poppinsParagraphBold,),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Text(
                ingredient.quantity ?? '',
                style: AppTextStyles.poppinsSmallRegularV3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

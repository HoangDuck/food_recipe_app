import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/domain/models/ingredients/ingredients.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ItemIngredient extends StatelessWidget {
  final Ingredients ingredient;
  const ItemIngredient({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Padding(
      padding: EdgeInsets.only(bottom: 12.sp),
      child: Container(
        width: 335.sp,
        height: 76.sp,
        padding: EdgeInsets.symmetric(vertical: 12.sp,horizontal: 16.sp),
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
              padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 12.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                color: AppColors.white,
              ),
              child: Image.network(
                ingredient.imgIngredient ?? '',
                width: 28.sp,
                height: 32.sp,
                errorBuilder: (context,error,stackTrace){
                  return Image.asset(
                    ingredient.imgIngredient ?? '',
                    width: 28.sp,
                    height: 32.sp,
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.sp,top: 17.sp,bottom: 13.sp),
              child: Text(ingredient.nameIngredient??'',style: AppTextStyles.poppinsParagraphBold,),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.sp),
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

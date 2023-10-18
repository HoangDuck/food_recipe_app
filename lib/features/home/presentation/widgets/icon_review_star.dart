import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class IconReviewStar extends StatelessWidget {
  final String rating;
  const IconReviewStar({super.key, this.rating=''});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: rating.isNotEmpty,
      child: Container(
        height: 28.sp,
        width: 59.sp,
        padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
        decoration: BoxDecoration(
          color: AppColors.iconReviewStarColor,
          borderRadius: BorderRadius.circular(10.sp)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.imgIconStar,width: 16.sp,height: 16.sp),
            SizedBox(width: 4.sp,),
            Text(rating,style: AppTextStyles.ratingTextStyle,),
          ],
        ),
      ),
    );
  }
}

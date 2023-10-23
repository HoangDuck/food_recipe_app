
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';


class IconTimeVideo extends ConsumerWidget{
  const IconTimeVideo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      // height: 26.h,
      // width: 46.w,
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColors.iconReviewStarColor,
          borderRadius: BorderRadius.circular(10.sp)
      ),
      child: Center(
        child: Text("15:10",style: AppTextStyles.poppinsSmallRegular,)
      ),
    );
  }

}
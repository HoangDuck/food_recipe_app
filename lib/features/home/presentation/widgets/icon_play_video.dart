
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';

class IconPlayVideo extends StatelessWidget {
  final Function() onTap;
  const IconPlayVideo({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: EdgeInsets.all(1.sp),
        maximumSize: Size(48.sp,48.sp),
        minimumSize: Size(48.sp,48.sp),
        backgroundColor: AppColors.iconReviewStarColor, // <-- Button color
        foregroundColor: AppColors.iconReviewStarColor, // <-- Splash color
      ),
      child: Image.asset(
        AppImages.imgIconPlayVideo,
        width: 20.sp,
        height: 20.sp,
      ),
    );
  }
}

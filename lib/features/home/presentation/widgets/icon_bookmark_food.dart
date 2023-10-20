
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';

class IconBookmarkFood extends StatelessWidget {
  final Function() onTap;
  final bool isMarked;
  const IconBookmarkFood({super.key,required this.onTap, this.isMarked = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onTap: () {
        onTap();
      },
      child: Container(
        height: 32.h,
        width: 32.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(100.sp),
        ),
        child: Image.asset(
          isMarked
              ? AppImages.imgIconDiscoverPressed
              : AppImages.imgIconNotBookmark,
          width: 21.33.sp,
          height: 21.33.sp,
        ),
      ),
    );
  }
}

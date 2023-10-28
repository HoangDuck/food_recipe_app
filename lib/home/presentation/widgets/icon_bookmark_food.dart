
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/presentation/theme/app_colors.dart';
import 'package:food_recipe_app/core/presentation/theme/app_images.dart';

class IconBookmarkFood extends StatelessWidget {
  final Function() onTap;
  final bool isMarked;
  final EdgeInsets padding;
  final Size size;

  const IconBookmarkFood(
      {super.key,
      required this.onTap,
      this.isMarked = false,
      this.padding = const EdgeInsets.all(6),
      this.size = const Size(20, 20)});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(
          padding.left.w,
          padding.top.w,
          padding.right.w,
          padding.bottom.w,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(100.sp),
        ),
        child: Image.asset(
          isMarked
              ? AppImages.imgIconDiscoverPressed
              : AppImages.imgIconNotBookmark,
          width: size.width.sp,
          height: size.height.sp,
        ),
      ),
    );
  }
}

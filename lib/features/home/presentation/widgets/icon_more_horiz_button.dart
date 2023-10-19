
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';

class IconMoreHorizFood extends StatelessWidget {
  final Function() onTap;
  const IconMoreHorizFood({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 32.sp,
        width: 32.sp,
        padding: EdgeInsets.all(6.sp),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(100.sp),
        ),
        child: Image.asset(
          AppImages.imgIconMoreHoriz,
          width: 20.sp,
          height: 20.sp,
        ),
      ),
    );
  }
}

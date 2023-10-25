import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class PrimaryNoIconLargeButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Size size;
  final EdgeInsets padding;
  final bool isHighLight;
  final double textSize;

  const PrimaryNoIconLargeButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.size = const Size(206, 54),
      this.padding = const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
      this.isHighLight = true,
      this.textSize = 16});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(
            padding.left.sp,
            padding.top.sp,
            padding.right.sp,
            padding.bottom.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isHighLight
              ? AppColors.buttonPrimaryNoIconLargeColor
              : AppColors.white,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: isHighLight
              ? textSize == 16
                  ? AppTextStyles.onBoardBold600
                  : AppTextStyles.customTextStyle(size: textSize)
              : textSize == 16
                  ? AppTextStyles.poppinsLabelBoldV4
                  : AppTextStyles.customTextStyle(
                      size: textSize,
                      color: AppColors.titleSmallBold,
                    ),
        ),
      ),
    );
  }
}

class PrimaryIconLargeButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final IconData icon;

  const PrimaryIconLargeButton(
      {super.key,
      required this.title,
      required this.onTap,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 32.w),
        // height: 54.h,
        // width: 206.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: AppColors.buttonPrimaryNoIconLargeColor,

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.start,
                style: AppTextStyles.onBoardBold600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Icon(icon,color: Colors.white,size: 20.w,),
            ),
          ],
        ),
      ),
    );
  }
}


class SecondaryNoIconLargeButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Size size;
  final EdgeInsets padding;
  final bool isHighLight;
  final double textSize;

  const SecondaryNoIconLargeButton(
      {super.key,
        required this.title,
        required this.onTap,
        this.size = const Size(107, 36),
        this.padding = const EdgeInsets.symmetric(vertical: 8,horizontal: 13),
        this.isHighLight = true,
        this.textSize = 14});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(
            padding.left.w,
            padding.top.h,
            padding.right.w,
            padding.bottom.h),
        //height: size.height.h,
        //width: size.width.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
          border: Border.all(color: AppColors.buttonPrimaryNoIconLargeColor)
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: isHighLight
              ? textSize == 14
                ? AppTextStyles.poppinsLabelBold
                : AppTextStyles.customTextStyle(size: textSize.sp)
              : textSize == 14
              ? AppTextStyles.poppinsLabelBoldV4
              : AppTextStyles.customTextStyle(
            size: textSize.sp,
            color: AppColors.titleSmallBold,
          ),
        ),
      ),
    );
  }
}
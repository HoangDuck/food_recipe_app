
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/presentation/theme/app_colors.dart';
import 'package:food_recipe_app/core/presentation/theme/app_images.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';

class ItemDescriptionCookServe extends StatelessWidget {
  final String image;
  final String title;
  final String quantity;

  const ItemDescriptionCookServe(
      {super.key, this.image = '', this.title = '', this.quantity = ''});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,977));
    return Container(
      width: 335.sp,
      height: 60.sp,
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
            width: 36.sp,
            height: 36.sp,
            padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              color: AppColors.white,
            ),
            child: Image.network(
              image,
              width: 20.w,
              height: 20.h,
              errorBuilder: (context,error,stackTrace){
                return Image.asset(
                  image,
                  width: 20.sp,
                  height: 20.sp,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w,top: 7.h,bottom: 7.h),
            child: Text(title,style: AppTextStyles.poppinsParagraphBold,),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Text(
              quantity,
              style: AppTextStyles.poppinsSmallRegularV3,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.w, 6.h, 0.w, 6.h),
            child: Image.asset(
              AppImages.imgIconArrowRight,
              width: 24.sp,
              height: 24.sp,
            ),
          ),
        ],
      ),
    );
  }
}

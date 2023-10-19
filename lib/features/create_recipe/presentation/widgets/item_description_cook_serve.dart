
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

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
            width: 36.sp,
            height: 36.sp,
            padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 8.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              color: AppColors.white,
            ),
            child: Image.network(
              image,
              width: 20.sp,
              height: 20.sp,
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
            padding: EdgeInsets.only(left: 16.sp,top: 7.sp,bottom: 7.sp),
            child: Text(title,style: AppTextStyles.poppinsParagraphBold,),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.sp),
            child: Text(
              quantity,
              style: AppTextStyles.poppinsSmallRegularV3,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.sp, 6.sp, 0.sp, 6.sp),
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

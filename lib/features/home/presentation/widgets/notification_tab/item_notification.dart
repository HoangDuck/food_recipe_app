import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/domain/models/notifications/notifications.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ItemNotification extends StatelessWidget {
  final Notifications notification;
  const ItemNotification({super.key,required this.notification});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 16.w),
      // height: 82.h,
      // width: 335.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        color: AppColors.cardFoodByCategory,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              color: AppColors.iconNotificationBackground,
              borderRadius: BorderRadius.circular(10.sp),
            ),
            height: 28.h,
            width: 28.w,
            child: Image.asset(
              AppImages.imgIconNotificationItem,
              height: 16.h,
              width: 16.w,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.title??'',
                    style: AppTextStyles.poppinsLabelBoldV3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Text(
                      notification.body ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      style: AppTextStyles.poppinsSmallRegularV2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: notification.isToday,
            child: Container(
              height: 6.h,
              width: 6.w,
              decoration: BoxDecoration(
                color: AppColors.buttonPrimaryNoIconLargeColor,
                borderRadius: BorderRadius.circular(48.sp)
              ),
            ),
          )
        ],
      ),
    );
  }
}

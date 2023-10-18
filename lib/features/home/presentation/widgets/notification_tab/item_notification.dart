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
      padding: EdgeInsets.symmetric(vertical: 12.sp,horizontal: 16.sp),
      height: 82.sp,
      width: 335.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        color: AppColors.cardFoodByCategory,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(6.sp),
            decoration: BoxDecoration(
              color: AppColors.iconNotificationBackground,
              borderRadius: BorderRadius.circular(10.sp),
            ),
            height: 28.sp,
            width: 28.sp,
            child: Image.asset(
              AppImages.imgIconNotificationItem,
              height: 16.sp,
              width: 16.sp,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.title??'',
                    style: AppTextStyles.poppinsLabelBoldV3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.sp),
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
              height: 6.sp,
              width: 6.sp,
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

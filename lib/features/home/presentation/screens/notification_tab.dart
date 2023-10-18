import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/notification_tab/list_notification.dart';
import 'package:food_recipe_app/shared/domain/models/notifications/notifications.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/widgets/app_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
class NotificationTab extends HookConsumerWidget{
  const NotificationTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController(initialPage: 0);
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 44.sp),
          child: SizedBox(
            height: 69.sp,
            child: Padding(
              padding: EdgeInsets.all(20.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.notification,
                    textAlign: TextAlign.start,
                    style: AppTextStyles.homeBoldh4,
                  ),
                  const Spacer(),
                  Image.asset(
                    AppImages.imgIconFilter,
                    width: 24.sp,
                    height: 24.sp,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 58.sp,
          child: Padding(
            padding: EdgeInsets.fromLTRB(19.sp,12.sp,19.sp,12.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PrimaryNoIconLargeButton(
                  title: AppStrings.all,
                  onTap: () {
                    pageController.jumpToPage(0);
                  },
                  size: Size(107.sp,34.sp),
                  padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 12.sp),
                  textSize: 12.sp,
                  isHighLight: true,
                ),
                const Spacer(),
                PrimaryNoIconLargeButton(
                  title: AppStrings.unRead,
                  size: Size(107.sp,34.sp),
                  padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 12.sp),
                  onTap: () {
                    pageController.jumpToPage(1);
                  },
                  textSize: 12.sp,
                  isHighLight: false,
                ),
                const Spacer(),
                PrimaryNoIconLargeButton(
                  title: AppStrings.read,
                  size: Size(107.sp,34.sp),
                  padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 12.sp),
                  onTap: () {
                    pageController.jumpToPage(2);
                  },
                  textSize: 12.sp,
                  isHighLight: false,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.sp,12.sp,20.sp,12.sp),
            child: PageView(
              controller: pageController,
              children: const [
                ListNotification(),
                ListNotification(type: TypeNotification.unread),
                ListNotification(type: TypeNotification.read),
              ],
            ),
          ),
        ),
        SizedBox(height: 106.sp,)
      ],
    );
  }
}
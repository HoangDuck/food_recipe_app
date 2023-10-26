import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/notification_tab/list_notification.dart';
import 'package:food_recipe_app/core/domain/models/notifications/notifications.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/core/presentation/app_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum TypeTabNotifications {
  all,
  read,
  unread
}

class NotificationTab extends HookConsumerWidget{
  const NotificationTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController(initialPage: 0);
    var currentPage = useValueNotifier<TypeTabNotifications>(TypeTabNotifications.all);
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 44.h),
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    AppStrings.notification,
                    textAlign: TextAlign.start,
                    style: AppTextStyles.homeBoldh4,
                  ),
                ),
                Image.asset(
                  AppImages.imgIconFilter,
                  width: 24.sp,
                  height: 24.sp,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20.w,12.h,20.w,12.h),
          child: ValueListenableBuilder(
            valueListenable: currentPage,
            builder: (context, currentTab, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: PrimaryNoIconLargeButton(
                      title: AppStrings.all,
                      onTap: () {
                        currentPage.value = TypeTabNotifications.all;
                        pageController.jumpToPage(0);
                      },
                      size: Size(107.w,34.h),
                      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 12.w),
                      textSize: 12.sp,
                      isHighLight: currentTab == TypeTabNotifications.all,
                    ),
                  ),
                  SizedBox(width: 7.w,),
                  Expanded(
                    child: PrimaryNoIconLargeButton(
                      title: AppStrings.unRead,
                      size: Size(107.w,34.h),
                      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 12.w),
                      onTap: () {
                        currentPage.value = TypeTabNotifications.unread;
                        pageController.jumpToPage(1);
                      },
                      textSize: 12.sp,
                      isHighLight: currentTab == TypeTabNotifications.unread,
                    ),
                  ),
                  SizedBox(width: 7.w,),
                  Expanded(
                    child: PrimaryNoIconLargeButton(
                      title: AppStrings.read,
                      size: Size(107.w,34.h),
                      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 12.w),
                      onTap: () {
                        currentPage.value = TypeTabNotifications.read;
                        pageController.jumpToPage(2);
                      },
                      textSize: 12.sp,
                      isHighLight: currentTab == TypeTabNotifications.read,
                    ),
                  ),
                ],
              );
            }
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w,12.h,16.w,12.h),
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListNotification(),
                ListNotification(type: TypeNotification.unread),
                ListNotification(type: TypeNotification.read),
              ],
            ),
          ),
        ),
        SizedBox(height: 106.h,)
      ],
    );
  }
}
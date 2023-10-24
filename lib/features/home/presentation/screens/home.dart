
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/screens/account_tab.dart';
import 'package:food_recipe_app/features/home/presentation/screens/home_tab.dart';
import 'package:food_recipe_app/features/home/presentation/screens/notification_tab.dart';
import 'package:food_recipe_app/features/home/presentation/screens/save_recipe_tab.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_tab.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_tab_model.dart';
import 'package:food_recipe_app/routes/app_route.dart';
import 'package:food_recipe_app/shared/theme/app_bottom_bar_shape.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum TypeTabBottomAppBar {
  home,
  discover,
  notification,
  profile
}

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    ScreenUtil.init(context, designSize: const Size(375,812));
    final pageController = usePageController(initialPage: 0);
    var currentPage = useState<TypeTabBottomAppBar>(TypeTabBottomAppBar.home);
    return Scaffold(
      backgroundColor: Colors.white,extendBody: true,
      resizeToAvoidBottomInset: false,
      body:   PageView(
        controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
        // pageSnapping: false,
        children: const [
          HomeTab(),
          SaveRecipeTab(),
          NotificationTab(),
          AccountTab(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,
        elevation:30,
        shadowColor: AppColors.borderTextField,
        padding: EdgeInsets.zero,
        notchMargin: 4.sp,
        // height: 106.sp,
        shape: const CircularNotchedRectangleCustom(),
        child: SizedBox(
          height: 106.h,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex:1,
                child: IconTab(
                  onTap: () {
                    currentPage.value = TypeTabBottomAppBar.home;
                    pageController.jumpToPage(0);
                  },
                  isHighLight: currentPage.value==TypeTabBottomAppBar.home,
                  padding: EdgeInsets.only(top:16.h,left: 0.w,right: 12.w,bottom: 50.h),
                  iconTabModel: IconTabModel(
                      enableImage: AppImages.imgIconHomePressed,
                      disableImage: AppImages.imgIconHome),
                ),
              ),
              Expanded(
                flex:1,
                child: IconTab(
                  onTap: () {
                    currentPage.value = TypeTabBottomAppBar.discover;
                    pageController.jumpToPage(1);
                  },
                  isHighLight: currentPage.value==TypeTabBottomAppBar.discover,
                  padding: EdgeInsets.only(top:16.h,left: 12.w,right: 103.w,bottom: 50.h),
                  iconTabModel: IconTabModel(
                      enableImage: AppImages.imgIconDiscoverPressed,
                      disableImage: AppImages.imgIconDiscover),
                ),
              ),
              const Spacer(),
              // Expanded(child:Container()),
              Expanded(
                flex:1,
                child: IconTab(
                  onTap: () {
                    currentPage.value = TypeTabBottomAppBar.notification;
                    pageController.jumpToPage(2);
                  },
                  isHighLight: currentPage.value==TypeTabBottomAppBar.notification,
                  padding: EdgeInsets.only(top:16.h,left: 103.w,right: 12.w,bottom: 50.h),
                  iconTabModel: IconTabModel(
                      enableImage: AppImages.imgIconNotificationPressed,
                      disableImage: AppImages.imgIconNotification),
                ),
              ),
              Expanded(
                flex:1,
                child: IconTab(
                  onTap: () {
                    currentPage.value = TypeTabBottomAppBar.profile;
                    pageController.jumpToPage(3);
                  },
                  isHighLight: currentPage.value==TypeTabBottomAppBar.profile,
                  padding: EdgeInsets.only(top:16.h,left: 12.w,right: 32.w,bottom: 50.h),
                  iconTabModel: IconTabModel(
                      enableImage: AppImages.imgIconAccountPressed,
                      disableImage: AppImages.imgIconAccount),
                ),
              ),
            ],
          ),
        ),

      ),
      floatingActionButton: SizedBox(
        height: 48.sp,
        width: 48.sp,
        child: FloatingActionButton.large(
          onPressed: () {
            context.pushRoute(const CreateRecipeRoute());
          },
          elevation: 0,
          backgroundColor: AppColors.buttonPrimaryNoIconLargeColor,
          child: Padding(
            padding: EdgeInsets.all(1.w),
            child: Icon(
              Icons.add_rounded,
              color: Colors.white,
              size: 21.sp,
            ),
          ),
          // elevation: 5.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}


import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/screens/account_tab.dart';
import 'package:food_recipe_app/features/home/presentation/screens/home_tab.dart';
import 'package:food_recipe_app/features/home/presentation/screens/notification_tab.dart';
import 'package:food_recipe_app/features/home/presentation/screens/save_recipe_tab.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_tab.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_tab_model.dart';
import 'package:food_recipe_app/routes/router.dart';
import 'package:food_recipe_app/shared/theme/app_bottom_bar_shape.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends HookConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    ScreenUtil.init(context, designSize: const Size(375,812));
    final pageController = usePageController(initialPage: 0);
    return Scaffold(
      backgroundColor: Colors.white,extendBody: true,
      resizeToAvoidBottomInset: false,
      body:   PageView(
        controller: pageController,
        children: const [
          HomeTab(),
          SaveRecipeTab(),
          NotificationTab(),
          AccountTab(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,
        elevation:10,
        shadowColor: AppColors.borderTextField,
        padding: EdgeInsets.zero,
        notchMargin: 4.sp,
        // height: 106.sp,
        shape: const CircularNotchedRectangleCustom(),
        child: SizedBox(
          height: 106.sp,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex:1,
                child: IconTab(
                  onTap: () {
                    pageController.jumpToPage(0);
                  },
                  padding: EdgeInsets.only(top:16.sp,left: 0.sp,right: 12.sp,bottom: 50.sp),
                  iconTabModel: IconTabModel(
                      enableImage: AppImages.imgIconHomePressed,
                      disableImage: AppImages.imgIconHome),
                ),
              ),
              Expanded(
                flex:1,
                child: IconTab(
                  onTap: () {
                    pageController.jumpToPage(1);
                  },
                  padding: EdgeInsets.only(top:16.sp,left: 12.sp,right: 103.sp,bottom: 50.sp),
                  iconTabModel: IconTabModel(
                      enableImage: AppImages.imgIconDiscoverPressed,
                      disableImage: AppImages.imgIconDiscoverPressed),
                ),
              ),
              const Spacer(),
              // Expanded(child:Container()),
              Expanded(
                flex:1,
                child: IconTab(
                  onTap: () {
                    pageController.jumpToPage(2);
                  },
                  padding: EdgeInsets.only(top:16.sp,left: 103.sp,right: 12.sp,bottom: 50.sp),
                  iconTabModel: IconTabModel(
                      enableImage: AppImages.imgIconNotificationPressed,
                      disableImage: AppImages.imgIconNotification),
                ),
              ),
              Expanded(
                flex:1,
                child: IconTab(
                  onTap: () {
                    pageController.jumpToPage(3);
                  },
                  padding: EdgeInsets.only(top:16.sp,left: 12.sp,right: 32.sp,bottom: 50.sp),
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
            Navigator.pushNamed(context, Routers.createRecipe);
          },
          elevation: 0,
          backgroundColor: AppColors.buttonPrimaryNoIconLargeColor,
          child: Padding(
            padding: EdgeInsets.all(1.sp),
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

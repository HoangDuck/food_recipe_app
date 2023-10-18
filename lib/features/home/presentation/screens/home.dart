
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/screens/home_tab.dart';
import 'package:food_recipe_app/features/home/presentation/screens/save_recipe_tab.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_tab.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_tab_model.dart';
import 'package:food_recipe_app/shared/theme/app_bottom_bar_shape.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Scaffold(
      backgroundColor: Colors.white,extendBody: true,
      resizeToAvoidBottomInset: false,
      body:   PageView(
        controller: _myPage,
        children: const [
          HomeTab(),
          SaveRecipeTab(),
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
                    _myPage.jumpToPage(0);
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
                    _myPage.jumpToPage(1);
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
                  onTap: () {},
                  padding: EdgeInsets.only(top:16.sp,left: 103.sp,right: 12.sp,bottom: 50.sp),
                  iconTabModel: IconTabModel(
                      enableImage: AppImages.imgIconNotificationPressed,
                      disableImage: AppImages.imgIconNotification),
                ),
              ),
              Expanded(
                flex:1,
                child: IconTab(
                  onTap: () {},
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
          onPressed: () {},
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

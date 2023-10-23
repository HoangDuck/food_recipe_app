
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/routes/router.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/widgets/app_button.dart';

@RoutePage()
class OnBoarding extends ConsumerStatefulWidget{
  static const String routeName = '/OnBoarding';

  const OnBoarding({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _OnBoardingScreenState();
  }
}

class _OnBoardingScreenState extends ConsumerState<OnBoarding> {
  // final AppRoute appRouter = AppRoute();
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () async {
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.imgBackgroundOnBoard),
              fit: BoxFit.cover
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black12,
                    Colors.black45,
                    Colors.black87,
                  ],
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left:82.w,top: 57.h,right: 83.w),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Image.asset(
                            AppImages.imgIconStar,
                            width: 16.w,
                            height: 16.w,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Text(
                            AppStrings.sixtyPlus,
                            style: AppTextStyles.onBoardBold600,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            AppStrings.premiumRecipe,
                            style: AppTextStyles.onBoardBold400,
                          ),
                        ),
                      ],
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 317.h,right: 64.w,left: 64.w,bottom: 0.h),
                  child: Text(
                    AppStrings.letsCooking,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.onBoardBold600BigSizeV2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.h,right: 73.w,left: 73.w,bottom: 40.h),
                  child: Text(
                    AppStrings.findBestRecipeForCooking,
                    textAlign: TextAlign.center,
                    // maxLines: 1,
                    style: AppTextStyles.onBoardBold400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(84.w, 0.h, 84.w, 82.h),
                  child: PrimaryIconLargeButton(
                    onTap: () {
                      Navigator.pushNamed(context, Routers.home);
                    },
                    title: AppStrings.startCooking,
                    icon: Icons.arrow_forward,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

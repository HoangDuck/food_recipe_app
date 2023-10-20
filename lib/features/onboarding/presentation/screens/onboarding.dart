
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/routes/app_route.dart';
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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.imgBackgroundOnBoard),
            fit: BoxFit.fitHeight
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
              Container(
                margin: EdgeInsets.fromLTRB(82.sp, 57.sp, 83.sp, 0.sp),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.sp),
                      child: Image.asset(
                        AppImages.imgIconStar,
                        width: 16.sp,
                        height: 16.sp,
                      ),
                    ),
                    Text(
                      AppStrings.sixtyPlus,
                      style: AppTextStyles.onBoardBold600,
                    ),
                    SizedBox(width: 4.sp,),
                    Text(
                      AppStrings.premiumRecipe,
                      style: AppTextStyles.onBoardBold400,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 377.sp,right: 64.sp,left: 64.sp),
                child: SizedBox(
                  height: 134.sp,
                  child: Text(
                    AppStrings.letsCooking,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.onBoardBold600BigSizeV2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.sp,right: 73.sp,left: 73.sp,bottom: 40.sp),
                child: Text(
                  AppStrings.findBestRecipeForCooking,
                  textAlign: TextAlign.center,
                  // maxLines: 1,
                  style: AppTextStyles.onBoardBold400,
                ),
              ),
              PrimaryIconLargeButton(
                onTap: () {
                  Navigator.pushNamed(context, Routers.home);
                },
                title: AppStrings.startCooking,
                icon: Icons.arrow_forward,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

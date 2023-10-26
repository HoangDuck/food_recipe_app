
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/routes/app_route.dart';
import 'package:food_recipe_app/core/presentation/theme/app_images.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:food_recipe_app/core/presentation/widgets/app_button.dart';

@RoutePage()
class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    ScreenUtil.init(context, designSize: const Size(375,812));
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(AppImages.imgBackgroundOnBoard),
          Container(
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
                  padding: EdgeInsets.only(top: 57.h),
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
                      Text(
                        AppStrings.premiumRecipe,
                        style: AppTextStyles.onBoardBold400,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 0.h,bottom: 0.h),
                  child: Text(
                    AppStrings.letsCooking,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.onBoardBold600BigSizeV2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.h,bottom: 40.h),
                  child: Text(
                    AppStrings.findBestRecipeForCooking,
                    textAlign: TextAlign.center,
                    // maxLines: 1,
                    style: AppTextStyles.onBoardBold400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(84.w, 0.h, 84.w,82.w),
                  child: PrimaryIconLargeButton(
                    onTap: () {
                      context.pushRoute(
                        const HomeRoute(),
                      );
                    },
                    title: AppStrings.startCooking,
                    icon: Icons.arrow_forward,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
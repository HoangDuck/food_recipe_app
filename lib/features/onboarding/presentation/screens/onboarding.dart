
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
      // final isUserLoggedIn = await ref.read(userLoginCheckProvider.future);
      // final route = isUserLoggedIn
      //     ? const DashboardRoute()
      //     : LoginRoute() as PageRouteInfo;
      // // ignore: use_build_context_synchronously
      // AutoRouter.of(context).pushAndPopUntil(
      //   route,
      //   predicate: (_) => false,
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.imgBackgroundOnBoard),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 28.sp,vertical: 64.sp),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.sp),
                      child: Image.asset(AppImages.imgIconStar),
                    ),
                    Text(
                      "60K+ ",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.onBoardBold600,
                    ),
                    Text(
                      "Premium recipes",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.onBoardBold400,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 317.sp,right: 64.sp,left: 64.sp),
                child: Text(
                  AppStrings.letsCooking,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.onBoardBold600BigSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.sp,right: 73.sp,left:  73.sp),
                child: Text(
                  AppStrings.findBestRecipeForCooking,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.onBoardBold400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.sp),
                child: PrimaryIconLargeButton(
                    onTap: () {
                      Navigator.pushNamed(context, Routers.home);
                    },
                    title: AppStrings.startCooking,
                    icon: Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

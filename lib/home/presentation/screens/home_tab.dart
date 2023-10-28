import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/home/presentation/widgets/home_tab/popular_category.dart';
import 'package:food_recipe_app/home/presentation/widgets/home_tab/popular_creators.dart';
import 'package:food_recipe_app/home/presentation/widgets/home_tab/recent_recipe.dart';
import 'package:food_recipe_app/home/presentation/widgets/home_tab/trending_now.dart';
import 'package:food_recipe_app/home/presentation/widgets/text_field_search.dart';
import 'package:food_recipe_app/core/presentation/theme/app_colors.dart';
import 'package:food_recipe_app/core/presentation/theme/app_images.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:food_recipe_app/routes/app_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeTab extends HookConsumerWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(22.w, 64.h, 136.w, 20.h),
            child: Text(
              AppStrings.findBestRecipeForCooking,
              textAlign: TextAlign.start,
              style: AppTextStyles.homeBoldh4,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
            child: TextFieldWidget(
              hintText: AppStrings.searchRecipe,
              borderColor: AppColors.dividerColor,
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 16.w,right: 12.w),
                child: Image.asset(
                  AppImages.imgIconSearch,
                  width: 20.sp,
                  height: 20.sp,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              onSubmit: (value){
                context.pushRoute(
                  SearchRecipeRoute(value: value),
                );
              },
            ),
          ),
          const TrendingNowWidget(),
          const PopularCategory(),
          const RecentRecipe(),
          const PopularCreators(),
          SizedBox(height: 106.h,)
        ],
      ),
    );
  }

}

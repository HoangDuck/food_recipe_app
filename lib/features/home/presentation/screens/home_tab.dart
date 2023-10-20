import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/home_tab/popular_category.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/home_tab/popular_creators.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/home_tab/recent_recipe.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/home_tab/trending_now.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/text_field_search.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
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

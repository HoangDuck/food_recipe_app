import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/home/shared/recent_recipe_state_provider.dart';
import 'package:food_recipe_app/home/presentation/widgets/home_tab/item_recent_recipe.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/core/presentation/theme/app_colors.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';

class RecentRecipe extends ConsumerWidget {
  const RecentRecipe({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateRecentRecipe = ref.watch(recentRecipeProvider);
    List<Meals> listRecentRecipe = stateRecentRecipe.listMealsByCategory;

    ScreenUtil.init(context, designSize: const Size(375, 812));

    return Padding(
      padding: EdgeInsets.fromLTRB(0.w, 12.h, 0, 12.h),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      AppStrings.recentRecipe,
                      style: AppTextStyles.poppinsH5Bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.seeAll,
                        style: AppTextStyles.poppinsLabelBold,
                      ),
                      const Icon(
                        Icons.arrow_forward_rounded,
                        color: AppColors.buttonPrimaryNoIconLargeColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 191.h,
              child: ListView.builder(
                itemCount: listRecentRecipe.length,
                padding: EdgeInsets.only(left: 20.w),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ItemRecentRecipe(meal: listRecentRecipe[index],);
                },
              ),
            ),
          ]),
    );
  }
}

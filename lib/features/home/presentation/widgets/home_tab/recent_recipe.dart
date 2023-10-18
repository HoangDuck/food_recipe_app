
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/providers/recent_recipe_state/recent_recipe_state_provider.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/home_tab/item_recent_recipe.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class RecentRecipe extends ConsumerWidget{
  const RecentRecipe({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateRecentRecipe = ref.watch(recentRecipeProvider);
    List<Meals> listRecentRecipe = stateRecentRecipe.listMealsByCategory;

    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.sp, 12.sp, 0, 12.sp),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding: EdgeInsets.fromLTRB(0.sp,0.sp,20.sp,16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.recentRecipe,style: AppTextStyles.poppinsH5Bold,),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(AppStrings.seeAll,style: AppTextStyles.poppinsLabelBold,),
                      const Icon(Icons.arrow_forward_rounded, color: AppColors.buttonPrimaryNoIconLargeColor,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 191.sp,
              child: ListView.builder(
                itemCount: listRecentRecipe.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ItemRecentRecipe(meal: listRecentRecipe[index],);
                },
              ),
            ),
          ]
      ),
    );
  }

}
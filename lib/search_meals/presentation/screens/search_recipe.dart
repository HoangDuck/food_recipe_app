import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:food_recipe_app/home/presentation/widgets/account_tab/item_video_recipe_profile.dart';
import 'package:food_recipe_app/home/shared/trending_now_state_provider.dart';

@RoutePage()
class SearchRecipeScreen extends ConsumerWidget {
  final String value;
  const SearchRecipeScreen({super.key,@PathParam('search') required this.value});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchMealsNotifierProvider(value));
    List<Meals> listFoodSearch = state.productList;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.w, 56.h, 20.w, 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap:(){
                    context.popRoute();
                  },
                  child: Container(
                    width: 24.sp,
                    height: 24.sp,
                    padding: EdgeInsets.zero,
                    child: const Icon(Icons.arrow_back_rounded),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap:(){
                  },
                  child: Container(
                    width: 24.sp,
                    height: 24.sp,
                    padding: EdgeInsets.zero,
                    child: const Icon(Icons.more_horiz),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(22.w, 0.h, 136.w, 0.h),
            child: Text(
              AppStrings.searchResult,
              textAlign: TextAlign.start,
              style: AppTextStyles.homeBoldh4,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.w),
              child: ListView.builder(
                  itemCount: listFoodSearch.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(0.w,0.w,0.w,16.w),
                      child: ItemVideoRecipe(
                        meal: listFoodSearch[index],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/providers/category_state/category_state_provider.dart';
import 'package:food_recipe_app/features/home/presentation/providers/home_state/home_state_provider.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/home_tab/item_category_popular.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/home_tab/item_meals_by_category.dart';
import 'package:food_recipe_app/shared/domain/models/categories/categories.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories.dart' as meal_by_category;

class PopularCategory extends ConsumerWidget{
  const PopularCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateCategory = ref.watch(homeNotifierPopularProvider);
    List<Categories> listCategories = stateCategory.productList as List<Categories>;

    final stateMealByCategory = ref.watch(categoryNotifierProvider);
    List<meal_by_category.Meals> listMealByCategories = stateMealByCategory.listMealsByCategory;
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
                  Text(AppStrings.popularCategory,style: AppTextStyles.poppinsH5Bold,),
                ],
              ),
            ),
            SizedBox(
              height: 34.sp,
              child: ListView.builder(
                itemCount: listCategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ItemCategoryPopular(
                    onTap: (id) {

                    },
                    categories: listCategories[index],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.sp),
              child: SizedBox(
                height: 231.sp,
                child: ListView.builder(
                  itemCount: listMealByCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ItemMealByCategory(
                      meals: listMealByCategories[index],
                    );
                  },
                ),
              ),
            ),
          ]
      ),
    );
  }

}
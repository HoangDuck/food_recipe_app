
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/app_configs.dart';
import 'package:food_recipe_app/core/presentation/widgets/prototype_wiget.dart';
import 'package:food_recipe_app/home/shared/category_state_provider.dart';
import 'package:food_recipe_app/home/presentation/widgets/home_tab/item_category_popular.dart';
import 'package:food_recipe_app/home/presentation/widgets/home_tab/item_meals_by_category.dart';
import 'package:food_recipe_app/core/domain/models/categories/category_list/categories.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:food_recipe_app/core/domain/models/categories/meal_by_categories/meals.dart' as meal_by_category;
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PopularCategory extends HookConsumerWidget{
  const PopularCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Categories> listCategories = ref.watch(categoryPopularNotifierProvider.select(
          (state) => state.listMealsByCategory,
    ));
    var currentIndexCategory = useValueNotifier<String>(listCategories.isEmpty
        ? 'Beef'
        : (listCategories.first.strCategory ?? 'Beef'));
    final List<meal_by_category.Meals> listMealByCategories =
        ref.watch(categoryNotifierProvider(currentIndexCategory.value).select(
      (state) => state.listMealsByCategory,
    ));
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Padding(
      padding: EdgeInsets.fromLTRB(0.w, 12.h, 0, 12.h),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding: EdgeInsets.fromLTRB(20.w,0.h,20.w,16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      AppStrings.popularCategory,
                      style: AppTextStyles.poppinsH5Bold,
                    ),
                  ),
                ],
              ),
            ),
            ValueListenableBuilder(
              valueListenable: currentIndexCategory,
              builder: (context, currentCategory, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 34.h,
                      child: ListView.builder(
                        itemCount: listCategories.length,
                        padding: EdgeInsets.only(left: 20.w),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ItemCategoryPopular(
                            onTap: (id) async {
                              currentIndexCategory.value = id;
                              ref.invalidate(categoryNotifierProvider(currentCategory));
                            },
                            categories: listCategories[index],
                            isHighLight: listCategories[index].strCategory ==
                                currentCategory,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: PrototypeListViewHorizontal(
                        listView: ListView.builder(
                          itemCount: listMealByCategories.length,
                          padding: EdgeInsets.only(left: 20.w),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ItemMealByCategory(
                              meals: listMealByCategories[index],
                            );
                          },
                        ), prototype: ItemMealByCategory(
                        meals: meal_by_category.Meals(strMeal: 'as',strMealThumb: AppConfig.randomImageUrl),
                      ),
                      ),
                    ),
                  ],
                );
              }
            ),
          ]
      ),
    );
  }
}
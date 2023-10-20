
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/providers/category_state/category_state_provider.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/home_tab/item_category_popular.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/home_tab/item_meals_by_category.dart';
import 'package:food_recipe_app/shared/domain/models/categories/categories.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories.dart' as meal_by_category;
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PopularCategory extends HookConsumerWidget{
  const PopularCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateCategory = ref.watch(homeNotifierPopularProvider);
    List<Categories> listCategories = stateCategory.productList as List<Categories>;
    var currentIndexCategory = useState<String>(listCategories.isEmpty
        ? 'Beef'
        : (listCategories.first.strCategory ?? 'Beef'));
    var stateMealByCategory = ref.watch(categoryNotifierProvider(currentIndexCategory.value));
    List<meal_by_category.Meals> listMealByCategories = [];
    listMealByCategories.addAll(stateMealByCategory.listMealsByCategory);
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 12.h, 0, 12.h),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding: EdgeInsets.fromLTRB(0.w,0.h,20.w,16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.popularCategory,style: AppTextStyles.poppinsH5Bold,),
                ],
              ),
            ),
            SizedBox(
              height: 34.h,
              child: ListView.builder(
                itemCount: listCategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ItemCategoryPopular(
                    onTap: (id) async {
                      currentIndexCategory.value = id;
                    },
                    categories: listCategories[index],
                    isHighLight: listCategories[index].strCategory ==
                        currentIndexCategory.value,
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: SizedBox(
                height: 231.h,
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
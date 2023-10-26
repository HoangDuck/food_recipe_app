import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/recipe_details/presentation/widgets/item_ingredient.dart';
import 'package:food_recipe_app/core/domain/models/ingredients/ingredients.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';

class ListIngredients extends ConsumerWidget{
  final List<Ingredients> listIngredients;
  const ListIngredients({super.key, this.listIngredients= const []});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 12.h),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 28.h,
                width: 164.w,
                child: Text(
                  AppStrings.ingredients,
                  style: AppTextStyles.poppinsH5Bold,
                ),
              ),
              const Spacer(),
              Text(
                AppStrings.fiveItems,
                style: AppTextStyles.poppinsSmallRegularV3,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: CustomScrollView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return ItemIngredient(
                      ingredient: listIngredients[index],
                    );
                  }, childCount: listIngredients.length),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
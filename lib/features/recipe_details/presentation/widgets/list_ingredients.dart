import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/widgets/item_ingredient.dart';
import 'package:food_recipe_app/shared/domain/models/ingredients/ingredients.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ListIngredients extends ConsumerWidget{
  final List<Ingredients> listIngredients;
  const ListIngredients({super.key, this.listIngredients= const []});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.sp, 12.sp, 20.sp, 12.sp),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 28.sp,
                width: 164.sp,
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
            padding: EdgeInsets.symmetric(vertical: 16.sp),
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
import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/configs/app_configs.dart';
import 'package:food_recipe_app/features/create_recipe/presentation/widgets/item_description_cook_serve.dart';
import 'package:food_recipe_app/features/create_recipe/presentation/widgets/item_video_recipe_detail_description.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/text_field_search.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DescriptionRecipeDetail extends HookConsumerWidget{
  const DescriptionRecipeDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    // final textEditController = useTextEditingController();
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemVideoRecipeDetailDescription(meal: Meals(strMealThumb: AppConfig.randomImageUrl),),
          Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 16.h),
            child: const TextFieldWidget(
              hintText: AppStrings.searchRecipe,
              borderColor: AppColors.buttonPrimaryNoIconLargeColor,
              initialValue: AppStrings.bentoLunch,
            ),
          ),
          ItemDescriptionCookServe(
            image: AppImages.imgIconProfile,
            title: AppStrings.serves,
            quantity: '01',
          ),
          SizedBox(height:12.h,),
          ItemDescriptionCookServe(
            image: AppImages.imgIconClockRed,
            title: AppStrings.cookTime,
            quantity: '45 min',
          ),
        ],
      ),
    );
  }

}
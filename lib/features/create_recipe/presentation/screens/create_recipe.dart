import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/create_recipe/presentation/widgets/description_recipe_detail.dart';
import 'package:food_recipe_app/features/create_recipe/presentation/widgets/form_add_ingredients.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/widgets/app_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateRecipe extends HookConsumerWidget{
  const CreateRecipe({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _titleCreateRecipe(context),
                  const DescriptionRecipeDetail(),
                  const FormAddIngredients(),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.sp, 16.sp, 20.sp, 50.sp),
            height: 120.sp,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowButtonSaveRecipe,
                  blurRadius: 8,
                  offset: Offset(0, -1),
                ),
              ],
              color: AppColors.white
            ),
            child: PrimaryNoIconLargeButton(
              title: AppStrings.saveMyRecipe,
              onTap: () {},
              padding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 32.sp),
              size: Size(335.sp, 54.sp),
            ),
          ),
        ],
      ),
    );
  }

  Widget _titleCreateRecipe(BuildContext context){
    return Container(
      padding: EdgeInsets.fromLTRB(20.sp, 56.sp, 20.sp, 12.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap:(){
                  Navigator.pop(context);
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
          Padding(
            padding: EdgeInsets.only(top: 16.sp),
            child: Text(
              AppStrings.createRecipe,
              style: AppTextStyles.poppinsH4Bold,
            ),
          )
        ],
      ),
    );
  }
}
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/create_recipe/shared/create_recipe_provider.dart';
import 'package:food_recipe_app/create_recipe/presentation/widgets/description_recipe_detail.dart';
import 'package:food_recipe_app/create_recipe/presentation/widgets/form_add_ingredients.dart';
import 'package:food_recipe_app/core/presentation/theme/app_colors.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:food_recipe_app/core/presentation/widgets/app_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
@RoutePage()
class CreateRecipeScreen extends HookConsumerWidget{
  const CreateRecipeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));

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
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.w, 56.h, 20.w, 12.h),
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
                        Padding(
                          padding: EdgeInsets.only(top: 16.h),
                          child: Text(
                            AppStrings.createRecipe,
                            style: AppTextStyles.poppinsH4Bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  const DescriptionRecipeDetail(),
                  const FormAddIngredients(),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 50.h),
            height: 120.h,
            width: MediaQuery.of(context).size.width,
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
              onTap: () {

                ref.read(formIngredientListProvider.notifier).printResult();
              },
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 32.w),
              size: Size(335.w, 56.h),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/create_recipe/presentation/providers/create_recipe_provider.dart';
import 'package:food_recipe_app/features/create_recipe/presentation/widgets/item_form_ingredients.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FormAddIngredients extends HookConsumerWidget{
  const FormAddIngredients({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    final formIngredientList = ref.watch(formIngredientListProvider);
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 12.h, 28.w, 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Text(
              AppStrings.ingredients,
              style: AppTextStyles.poppinsParagraphBoldV3,
            ),
          ),
          CustomScrollView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            slivers: [
              SliverList(delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                    return ItemFormIngredients(
                      key: Key(formIngredientList[index].id),
                      formIngredient: formIngredientList[index],
                    );
                  },
                // 40 list items
                childCount: formIngredientList.length,
              ),)
            ],
          ),
          GestureDetector(
            onTap:(){
              ref.read(formIngredientListProvider.notifier).add('','');
            },
            child: SizedBox(
              height: 24.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 24.sp,
                    width: 24.sp,
                    child: Image.asset(AppImages.imgIconAdd),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Text(
                      AppStrings.addNewIngredient,
                      style: AppTextStyles.poppinsParagraphBoldV2,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
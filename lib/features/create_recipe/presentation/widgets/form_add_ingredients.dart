import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    var numberOfIngredients = useState<int>(1);
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.sp, 12.sp, 28.sp, 12.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16.sp),
            child: Text(
              AppStrings.ingredients,
              style: AppTextStyles.poppinsParagraphBoldV3,
            ),
          ),
          ...List.generate(numberOfIngredients.value,
              (index) => const ItemFormIngredients()),
          GestureDetector(
            onTap:(){
              numberOfIngredients.value = numberOfIngredients.value+1;
            },
            child: SizedBox(
              height: 24.sp,
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
                    padding: EdgeInsets.only(left: 4.sp),
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
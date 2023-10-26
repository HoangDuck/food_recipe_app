import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/create_recipe/presentation/model/form_ingredient_model.dart';
import 'package:food_recipe_app/create_recipe/presentation/providers/create_recipe_provider.dart';
import 'package:food_recipe_app/home/presentation/widgets/text_field_search.dart';
import 'package:food_recipe_app/core/presentation/theme/app_images.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemFormIngredients extends HookConsumerWidget{
  final FormIngredient formIngredient;
  const ItemFormIngredients({super.key,required this.formIngredient});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    var textEditControllerTitle = useTextEditingController();
    textEditControllerTitle.text = formIngredient.title;
    var textEditControllerValue = useTextEditingController();
    textEditControllerValue.text = formIngredient.value;
    // final formIngredientList = ref.watch(formIngredientListProvider);
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(bottom: 16.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: TextFieldWidget(
              size: Size(155.w, 44.h),
              textEditController: textEditControllerTitle,
              hintText: AppStrings.itemName,
              onChange: (text){
                ref.read(formIngredientListProvider.notifier).edit(
                    id: formIngredient.id,
                    title: text,
                    value: formIngredient.value);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: TextFieldWidget(
              size: Size(110.w, 44.h),
              textEditController: textEditControllerValue,
              hintText: AppStrings.quantity,
              textAlign: TextAlign.center,
              onChange: (text){
                ref.read(formIngredientListProvider.notifier).edit(
                    id: formIngredient.id,
                    title: formIngredient.title,
                    value: text);
              },
            ),
          ),
          GestureDetector(
            onTap: (){

            },
            child: Image.asset(
              AppImages.imgIconAddBorder,
              width: 24.sp,
              height: 24.sp,
            ),
          ),
        ],
      ),
    );
  }

}
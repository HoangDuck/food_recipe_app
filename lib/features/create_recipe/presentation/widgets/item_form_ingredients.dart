import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/text_field_search.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemFormIngredients extends HookConsumerWidget{
  const ItemFormIngredients({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(bottom: 16.sp),
      child: SizedBox(
        width: 327.sp,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12.sp),
              child: TextFieldWidget(
                size: Size(155.sp, 44.sp),
                hintText: AppStrings.itemName,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12.sp),
              child: TextFieldWidget(
                size: Size(110.sp, 44.sp),
                hintText: AppStrings.quantity,
                textAlign: TextAlign.center,
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
            )
          ],
        ),
      ),
    );
  }

}
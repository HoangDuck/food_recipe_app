import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/create_recipe/presentation/widgets/icon_edit_button.dart';
import 'package:food_recipe_app/recipe_details/presentation/widgets/item_video_recipe_detail.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';

class ItemVideoRecipeDetailDescription extends ConsumerWidget{
  final Meals meal;
  const ItemVideoRecipeDetailDescription({super.key, required this.meal});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));

    return ItemVideoRecipeDetail(
      meal: meal,
      size: Size(335.w, 200.h),
      extendWidgets: [
        Positioned(
          top: 8.h,
          right: 8.w,
          child: IconEditButton(
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/domain/models/categories/categories.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ItemCategoryPopular extends ConsumerWidget{
  final Function(String id) onTap;
  final Categories categories;
  const ItemCategoryPopular({super.key, required this.onTap, required this.categories});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(right: 8.sp),
      child: GestureDetector(
        onTap: () {
          onTap(categories.idCategory??'');
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 12.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: AppColors.white,
          ),
          child: Text(
              categories.strCategory??'',
            textAlign: TextAlign.center,
            style: AppTextStyles.poppinsSmallBold,

          ),
        ),
      ),
    );
  }

}
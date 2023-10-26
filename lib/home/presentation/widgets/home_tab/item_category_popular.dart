import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/domain/models/categories/category_list/categories.dart';
import 'package:food_recipe_app/core/presentation/theme/app_colors.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';

class ItemCategoryPopular extends StatelessWidget{
  final Function(String id) onTap;
  final Categories categories;
  final bool isHighLight;

  const ItemCategoryPopular(
      {super.key,
        required this.onTap,
        required this.categories,
        this.isHighLight = false});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: GestureDetector(
        onTap: () {
          onTap(categories.strCategory??'Beef');
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: isHighLight
                ? AppColors.buttonPrimaryNoIconLargeColor
                : AppColors.white,
          ),
          child: Text(
            categories.strCategory??'',
            textAlign: TextAlign.center,
            style: isHighLight
                ? AppTextStyles.poppinsSmallBoldWhite
                : AppTextStyles.poppinsSmallBold,
          ),
        ),
      ),
    );
  }
}

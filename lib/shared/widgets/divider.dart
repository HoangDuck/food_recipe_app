import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';

class DividerBorder extends StatelessWidget {
  const DividerBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Container(
      height: 1.h,
      color: AppColors.dividerColor,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class TextFieldSearchWidget extends StatefulWidget {
  const TextFieldSearchWidget({super.key});

  @override
  State<TextFieldSearchWidget> createState() => _TextFieldSearchWidgetState();
}

class _TextFieldSearchWidgetState extends State<TextFieldSearchWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return SizedBox(
      height: 44.sp,
      width: 335.sp,
      child: Padding(
        padding: EdgeInsets.only(left: 16.sp,right: 12.sp),
        child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.borderTextField, width: 1.sp),
                borderRadius: BorderRadius.circular(15),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.borderTextField, width: 1.sp),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Search recipes',
              hintStyle: AppTextStyles.hintTextStyleSearch,
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 16.sp,right: 12.sp),
                child: Image.asset(
                  AppImages.imgIconSearch,
                  width: 20.sp,
                  height: 20.sp,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
            ),
          textAlignVertical: TextAlignVertical.center,
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextFieldWidget extends HookConsumerWidget {
  final String hintText;
  final Color borderColor;
  final TextStyle? hintStyle;
  final String initialValue;
  final TextStyle? style;
  final Widget? prefixIcon;
  final TextAlign textAlign;
  final Size size;
  final Function(String text)? onChange;
  final TextEditingController? textEditController;

  const TextFieldWidget(
      {super.key,
        this.textEditController,
      this.hintText = '',
      this.borderColor = AppColors.borderTextField,
      this.style,
      this.hintStyle,
      this.initialValue = '',
      this.prefixIcon,
      this.textAlign = TextAlign.start,
      this.size = const Size(335, 44),this.onChange});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    if(initialValue!='' && textEditController!=null){
      textEditController!.text = initialValue;
    }
    // TODO: implement build
    ScreenUtil.init(context, designSize: const Size(375,812));
    return SizedBox(
      height: size.height.sp,
      width: size.width.sp,
      child: TextFormField(
        controller: textEditController,
        style: style ?? AppTextStyles.poppinsLabelBoldV5,
        onChanged: (text){
          if(onChange!=null){
            onChange!(text);
          }
        },
        textAlign: textAlign,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 1.sp),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 1.sp),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 1.sp),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          hintText: hintText,
          hintStyle: hintStyle ?? AppTextStyles.hintTextStyleSearch,
          prefixIcon: prefixIcon,
          contentPadding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 16.w)
        ),
        textAlignVertical: TextAlignVertical.center,
        // textAlign: TextAlign.center,
      ),
    );
  }

}

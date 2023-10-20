import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_tab_model.dart';

class IconTab extends StatelessWidget {
  final IconTabModel iconTabModel;
  final EdgeInsetsGeometry? padding;
  final Function() onTap;
  final bool isHighLight;

  const IconTab(
      {super.key,
      required this.onTap,
      required this.iconTabModel,
      this.padding = const EdgeInsets.all(8),
      this.isHighLight = false});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return GestureDetector(
      onTap:(){
        onTap();
      },
      child: SizedBox(
        height: 40.sp,
        width: 40.sp,
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Image.asset(
            isHighLight ? iconTabModel.enableImage : iconTabModel.disableImage,
          ),
        ),
      ),
    );
  }
}

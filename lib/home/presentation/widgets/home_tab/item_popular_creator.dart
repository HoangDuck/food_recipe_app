import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/app_configs.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';

class ItemPopularCreator extends StatelessWidget {
  const ItemPopularCreator({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return SizedBox(
      // height: 121.h,
      width: 75.w,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 75.w,
                height: 75.w,
              child: CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(AppConfig.randomImageUrl,),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.w, 8.h, 0.w, 0.h),
              child: Text(
                "Troyan Smith",
                textAlign: TextAlign.center,
                style: AppTextStyles.poppinsLabelBoldV3,
              ),
            )
          ],
        ),
      ),
    );
  }
}

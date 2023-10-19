import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/configs/app_configs.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ItemPopularCreator extends StatelessWidget {
  const ItemPopularCreator({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return SizedBox(
      height: 119.sp,
      width: 75.sp,
      child: Padding(
        padding: EdgeInsets.only(right: 12.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 75.sp,
                height: 75.sp,
              child: CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(AppConfig.randomImageUrl,),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.sp, 8.sp, 0.sp, 0.sp),
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

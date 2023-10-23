import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ItemStatistic extends StatelessWidget {
  final String keyStatistic;
  final String value;
  const ItemStatistic({super.key, this.keyStatistic = '',this.value=''});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return SizedBox(
      // height: 48.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            keyStatistic,
            style: AppTextStyles.poppinsSmallRegularV2,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: AppTextStyles.poppinsH5Bold,
            ),
          )
        ],
      ),
    );
  }
}

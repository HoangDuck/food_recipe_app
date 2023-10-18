import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class SaveRecipeTab extends StatefulWidget {
  const SaveRecipeTab({super.key});

  @override
  State<SaveRecipeTab> createState() => _SaveRecipeTabState();
}

class _SaveRecipeTabState extends State<SaveRecipeTab> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(22.sp, 64.sp, 136.sp, 20.sp),
            child: Text(
              AppStrings.savedRecipe,
              textAlign: TextAlign.start,
              style: AppTextStyles.homeBoldh4,
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 20.sp),
          //   child: const TextFieldSearchWidget(),
          // ),
          // const TrendingNowWidget(),
          // const PopularCategory(),
          // const RecentRecipe(),
          // const PopularCreators(),
          SizedBox(height: 106.sp,)
        ],
      ),
    );
  }
}

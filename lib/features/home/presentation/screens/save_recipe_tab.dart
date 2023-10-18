import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/saved_recipe_tab/list_video_recipes.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/widgets/app_button.dart';

class SaveRecipeTab extends StatefulWidget {
  const SaveRecipeTab({super.key});

  @override
  State<SaveRecipeTab> createState() => _SaveRecipeTabState();
}

class _SaveRecipeTabState extends State<SaveRecipeTab> {
  final PageController _myPage = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 44.sp),
          child: SizedBox(
            height: 69.sp,
            child: Padding(
              padding: EdgeInsets.fromLTRB(22.sp, 20.sp, 136.sp, 20.sp),
              child: Text(
                AppStrings.savedRecipe,
                textAlign: TextAlign.start,
                style: AppTextStyles.homeBoldh4,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 58.sp,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.sp,12.sp,21.sp,12.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PrimaryNoIconLargeButton(
                  title: AppStrings.video,
                  onTap: () {

                    _myPage.jumpToPage(0);
                  },
                  size: Size(159.sp,34.sp),
                  padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 12.sp),
                  textSize: 12.sp,
                  isHighLight: true,
                ),
                const Spacer(),
                PrimaryNoIconLargeButton(
                  title: AppStrings.recipe,
                  size: Size(159.sp,34.sp),
                  padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 12.sp),
                  onTap: () {
                    _myPage.jumpToPage(1);
                  },
                  textSize: 12.sp,
                  isHighLight: false,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.sp,12.sp,20.sp,12.sp),
            child: PageView(
              controller: _myPage,
              children: [
                const ListVideoRecipes(),
                Container()
              ],
            ),
          ),
        ),
        SizedBox(height: 106.sp,)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/home/presentation/widgets/saved_recipe_tab/list_video_recipes.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:food_recipe_app/core/presentation/widgets/app_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
enum TypeTabSavedRecipes {
  video,
  recipe
}

class SaveRecipeTab extends HookConsumerWidget {
  const SaveRecipeTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentPage = useValueNotifier<TypeTabSavedRecipes>(TypeTabSavedRecipes.video);
    // TODO: implement build
    ScreenUtil.init(context, designSize: const Size(375,812));
    final pageController = usePageController(initialPage: 0);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 44.h),
          child: Padding(
            padding: EdgeInsets.fromLTRB(22.w, 20.h, 136.w, 20.h),
            child: Text(
              AppStrings.savedRecipe,
              textAlign: TextAlign.start,
              style: AppTextStyles.homeBoldh4,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20.w,12.h,21.w,12.h),
          child: ValueListenableBuilder(
            valueListenable: currentPage,
            builder: (context, currentTab, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: PrimaryNoIconLargeButton(
                      title: AppStrings.video,
                      onTap: () {
                        currentPage.value = TypeTabSavedRecipes.video;
                        pageController.jumpToPage(0);
                      },
                      size: Size(159.w,34.h),
                      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 12.w),
                      textSize: 12.sp,
                      isHighLight:  currentTab == TypeTabSavedRecipes.video,
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  Expanded(
                    child: PrimaryNoIconLargeButton(
                      title: AppStrings.recipe,
                      size: Size(159.w,34.h),
                      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 12.w),
                      onTap: () {
                        currentPage.value = TypeTabSavedRecipes.recipe;
                        pageController.jumpToPage(1);
                      },
                      textSize: 12.sp,
                      isHighLight: currentTab == TypeTabSavedRecipes.recipe,
                    ),
                  ),
                ],
              );
            }
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w,12.h,20.w,12.h),
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const ListVideoRecipes(),
                Container()
              ],
            ),
          ),
        ),
        SizedBox(height: 106.h,)
      ],
    );
  }

}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/account_tab/list_recipe_profile.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/account_tab/my_profile.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/widgets/app_button.dart';
import 'package:food_recipe_app/shared/widgets/divider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountTab extends HookConsumerWidget{
  const AccountTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController(initialPage: 0);
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 44.sp),
          child: SizedBox(
            height: 69.sp,
            child: Padding(
              padding: EdgeInsets.fromLTRB(22.sp,20.sp,20.sp,20.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.myProfile,
                    textAlign: TextAlign.start,
                    style: AppTextStyles.homeBoldh4,
                  ),
                  const Spacer(),
                  const Icon(Icons.more_horiz)
                ],
              ),
            ),
          ),
        ),
        const MyProfile(),
        DividerBorder(),
        SizedBox(
          height: 58.sp,
          child: Padding(
            padding: EdgeInsets.fromLTRB(19.sp,12.sp,19.sp,12.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PrimaryNoIconLargeButton(
                  title: AppStrings.video,
                  onTap: () {
                    pageController.jumpToPage(0);
                  },
                  size: Size(160.sp,34.sp),
                  padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 12.sp),
                  textSize: 12.sp,
                  isHighLight: false,
                ),
                const Spacer(),
                PrimaryNoIconLargeButton(
                  title: AppStrings.recipe,
                  size: Size(160.sp,34.sp),
                  padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 12.sp),
                  onTap: () {
                    pageController.jumpToPage(1);
                  },
                  textSize: 12.sp,
                  isHighLight: true,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: PageView(
            controller: pageController,
            children: const [
              ListRecipeProfile(),
              ListRecipeProfile(),
            ],
          ),
        ),
        SizedBox(height: 106.sp,)
      ],
    );
  }
}
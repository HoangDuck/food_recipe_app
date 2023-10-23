import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/account_tab/list_recipe_profile.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/account_tab/my_profile.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/widgets/app_button.dart';
import 'package:food_recipe_app/shared/widgets/divider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum TypeTabAccount {
  video,
  recipe
}

class AccountTab extends HookConsumerWidget{
  const AccountTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController(initialPage: 0);
    var currentPage = useState<TypeTabAccount>(TypeTabAccount.video);
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 44.h),
            child: Padding(
              padding: EdgeInsets.fromLTRB(22.w,20.h,20.w,20.h),
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
          const MyProfile(),
          const DividerBorder(),
          SizedBox(
            height: 58.h,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.w,12.h,20.w,12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: PrimaryNoIconLargeButton(
                      title: AppStrings.video,
                      onTap: () {
                        currentPage.value = TypeTabAccount.video;
                        pageController.jumpToPage(0);
                      },
                      size: Size(160.w,34.h),
                      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 12.w),
                      textSize: 12.sp,
                      isHighLight: currentPage.value == TypeTabAccount.video,
                    ),
                  ),
                  SizedBox(width: 16.w,),
                  Expanded(
                    child: PrimaryNoIconLargeButton(
                      title: AppStrings.recipe,
                      size: Size(160.w,34.h),
                      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 12.w),
                      onTap: () {
                        currentPage.value = TypeTabAccount.recipe;
                        pageController.jumpToPage(1);
                      },
                      textSize: 12.sp,
                      isHighLight: currentPage.value == TypeTabAccount.recipe,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(),
                  const ListRecipeProfile(),
                ],
              ),
            ),
          ),
          SizedBox(height: 106.h,)
        ],
      ),
    );
  }
}
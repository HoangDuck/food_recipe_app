import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/home/shared/user_state_provider.dart';
import 'package:food_recipe_app/home/presentation/widgets/account_tab/item_video_recipe_profile.dart';
import 'package:food_recipe_app/home/presentation/widgets/account_tab/my_profile.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:food_recipe_app/core/presentation/widgets/app_button.dart';
import 'package:food_recipe_app/core/presentation/widgets/divider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum TypeTabAccount {
  video,
  recipe
}

class AccountTab extends HookConsumerWidget{
  const AccountTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentPage = useValueNotifier<TypeTabAccount>(TypeTabAccount.video);
    final state = ref.watch(userNotifierProvider);
    List<Meals> listMealsProfile = state.listMeals;
    ScreenUtil.init(context, designSize: const Size(375,812));

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
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
        ),
        const SliverToBoxAdapter(child: MyProfile()),
        const SliverToBoxAdapter(child: DividerBorder()),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w,12.h,20.w,12.h),
            child: ValueListenableBuilder(
                valueListenable:currentPage,
                builder: (context, currentTab, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: PrimaryNoIconLargeButton(
                          title: AppStrings.video,
                          onTap: () {
                            currentPage.value = TypeTabAccount.video;
                          },
                          size: Size(160.w,34.h),
                          padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 12.w),
                          textSize: 12.sp,
                          isHighLight: currentTab == TypeTabAccount.video,
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
                          },
                          textSize: 12.sp,
                          isHighLight: currentTab == TypeTabAccount.recipe,
                        ),
                      ),
                    ],
                  );
                }
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(20.w,20.w,20.w,20.w),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(0.w,0.w,0.w,16.w),
                  child: ItemVideoRecipe(
                    meal: listMealsProfile[index],
                  ),
                );
              },
              childCount: listMealsProfile.length,
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 106.h,))
      ],
    );
  }
}
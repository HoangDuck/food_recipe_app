import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/home/shared/user_state_provider.dart';
import 'package:food_recipe_app/home/presentation/widgets/account_tab/item_statistic.dart';
import 'package:food_recipe_app/routes/app_route.dart';
import 'package:food_recipe_app/core/domain/models/users/user.dart';
import 'package:food_recipe_app/core/presentation/theme/app_images.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:food_recipe_app/core/presentation/widgets/app_button.dart';

class MyProfile extends ConsumerWidget{
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    final state = ref.watch(userNotifierProvider);
    if(state.isLoading){
      return const Center(
        child: CircularProgressIndicator(),
      );
    }else{
      User user = state.user!;
      return Padding(
        padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(48.sp),
                      child: Image.network(
                        user.avatar,
                        fit: BoxFit.cover,
                        height: 99.h,
                        width: 100.w,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(AppImages.imgIconAvatarMock);
                        },
                      ),
                    ),
                    const Spacer(),
                    SecondaryNoIconLargeButton(
                      title: AppStrings.editProfile,
                      onTap: () {
                        AutoRouter.of(context).pushNamed(OnBoardingRoute.name);
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: Text(
                    user.fullName ?? '',
                    style: AppTextStyles.poppinsH5Bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.h,right: 99.w),
                  child: Text(
                    user.intro ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    style: AppTextStyles.poppinsSmallRegularV3,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ItemStatistic(
                    keyStatistic: AppStrings.recipe,
                    value: user.statistic!.recipe.toString(),
                  ),
                  const Spacer(),
                  ItemStatistic(
                    keyStatistic: AppStrings.videos,
                    value: user.statistic!.videos.toString(),
                  ),
                  const Spacer(),
                  ItemStatistic(
                    keyStatistic: AppStrings.followers,
                    value: user.statistic!.followers.toString(),
                  ),
                  const Spacer(),
                  ItemStatistic(
                    keyStatistic: AppStrings.following,
                    value: user.statistic!.following.toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
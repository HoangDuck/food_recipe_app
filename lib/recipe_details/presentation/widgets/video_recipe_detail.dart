import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/app_configs.dart';
import 'package:food_recipe_app/recipe_details/presentation/widgets/item_video_recipe_detail.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/core/presentation/theme/app_images.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:food_recipe_app/core/presentation/widgets/app_button.dart';

class VideoRecipeDetail extends ConsumerWidget{
  final Meals meal;
  const VideoRecipeDetail({super.key, required this.meal});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 14.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemVideoRecipeDetail(meal: meal),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.imgIconStarHighlight,width: 16.w,height: 16.h,),
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Text(
                    AppStrings.fourAndAHalf,
                    style: AppTextStyles.poppinsParagraphBold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.w),
                  child: Text(
                    AppStrings.threeHundredReviews,
                    style: AppTextStyles.poppinsSmallRegularV3,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 43.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(48.sp),
                  child: Image.network(AppConfig.randomImageUrl,width: 41.w,height: 41.h,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        meal.strMeal??'',style: AppTextStyles.poppinsParagraphBoldV2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.imgIconLocation,
                            height: 16.sp,
                            width: 16.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.w),
                            child: Text(
                              meal.strArea ?? '',
                              style: AppTextStyles.poppinsSmallRegularV3,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                PrimaryNoIconLargeButton(
                  title: AppStrings.follow,
                  onTap: () {},
                  padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 16.w),
                  size: Size(77.w,36.h),
                  textSize: 13.sp,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/configs/app_configs.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/widgets/item_video_recipe_detail.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/widgets/app_button.dart';

class VideoRecipeDetail extends ConsumerWidget{
  final Meals meal;
  const VideoRecipeDetail({super.key, required this.meal});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.sp, 12.sp, 20.sp, 14.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemVideoRecipeDetail(meal: meal),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.imgIconStarHighlight,width: 16.sp,height: 16.sp,),
                Padding(
                  padding: EdgeInsets.only(left: 4.sp),
                  child: Text(
                    AppStrings.fourAndAHalf,
                    style: AppTextStyles.poppinsParagraphBold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.sp),
                  child: Text(
                    AppStrings.threeHundredReviews,
                    style: AppTextStyles.poppinsSmallRegularV3,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 43.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(48.sp),
                  child: Image.network(AppConfig.randomImageUrl,width: 41.sp,height: 41.sp,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.sp),
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
                            padding: EdgeInsets.only(left: 4.sp),
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
                  padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 16.sp),
                  size: Size(77.sp,36.sp),
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
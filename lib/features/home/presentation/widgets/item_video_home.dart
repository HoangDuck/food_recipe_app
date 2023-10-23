import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_bookmark_food.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_play_video.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_review_star.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_time_video.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ItemVideo extends ConsumerWidget {
  final Meals meal;
  final bool isMarked;
  final Size size;

  const ItemVideo(
      {super.key,
      required this.meal,
      this.isMarked = false,
      this.size = const Size(280, 220)});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _videoPreview(),
        _videoCreator(
          authorAvt: meal.strMealThumb ?? '',
          authorName: meal.strArea ?? '',
        ),
      ],
    );
  }

  Widget _videoCreator({String authorAvt = '',String authorName = ''}){
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: SizedBox(
        height: 32.h,
        width: 145.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(72),
              child: Image.network(
                authorAvt,
                errorBuilder: (context,error,stackTrace){
                  return Container();
                },
                width: 32.w,
                height: 32.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                authorName,
                style: AppTextStyles.poppinsSmallRegularV2,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _videoPreview(){
    return SizedBox(
      // height: size.height.h,
      width: size.width.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180.h,
            width: size.width.w,
            child: Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: Stack(
                children: [
                  Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Image.network(
                          meal.strMealThumb ?? '',
                          fit: BoxFit.fitWidth,
                          
                          errorBuilder: (context, error, stackTrace) {
                            return Container();
                          },
                                          ),
                      )),
                  Positioned(
                    top: 8.h,
                    left: 8.w,
                    child: const IconReviewStar(
                      rating: AppStrings.fourAndAHalf,
                    ),
                  ),
                  Positioned(
                    top: 8.h,
                    right: 8.w,
                    child: IconBookmarkFood(
                      onTap: () {},
                      isMarked: isMarked,
                    ),
                  ),
                  Positioned(
                    bottom: 8.h,
                    right: 8.w,
                    child: const IconTimeVideo(),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: IconPlayVideo(
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.h),
            child: Row(
              children: [
                Text(meal.strMeal??'',style: AppTextStyles.poppinsParagraphBold),
                const Spacer(),
                const Icon(Icons.more_horiz)
              ],
            ),
          )
        ],
      ),
    );
  }
}
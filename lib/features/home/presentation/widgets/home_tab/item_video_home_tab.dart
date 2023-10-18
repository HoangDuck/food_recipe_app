import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/configs/app_configs.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_bookmark_food.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_play_video.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_review_star.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_time_video.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class ItemVideo extends ConsumerWidget {
  final Meals meal;
  const ItemVideo({super.key,required this.meal});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Padding(
      padding: EdgeInsets.only(right: 16.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _videoPreview(),
          _videoCreator(authorAvt: meal.strMealThumb??'',authorName: meal.strArea??''),
        ],
      ),
    );
  }

  Widget _videoCreator({String authorAvt = '',String authorName = ''}){
    return Padding(
      padding: EdgeInsets.only(top: 2.sp),
      child: SizedBox(
        height: 32.sp,
        width: 145.sp,
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
                width: 32.sp,
                height: 32.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.sp),
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
      height: 220.sp,
      width: 280.sp,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180.sp,
            width: 280.sp,
            child: Padding(
              padding: EdgeInsets.only(bottom: 6.sp),
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
                    top: 8.sp,
                    left: 8.sp,
                    child: const IconReviewStar(
                      rating: '4,5',
                    ),
                  ),
                  Positioned(
                    top: 8.sp,
                    right: 8.sp,
                    child: IconBookmarkFood(
                      onTap: () {},
                    ),
                  ),
                  Positioned(
                    bottom: 8.sp,
                    right: 8.sp,
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
            padding: EdgeInsets.symmetric(vertical: 6.sp),
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
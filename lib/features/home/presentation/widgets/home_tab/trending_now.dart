import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/providers/home_state/home_state_provider.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/item_video_home.dart';
import 'package:food_recipe_app/routes/router.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class TrendingNowWidget extends ConsumerWidget{
  const TrendingNowWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeNotifierTrendingProvider);
    List<Meals> listFoodTrending = state.productList as List<Meals>;

    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.sp, 12.sp, 0, 12.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Padding(
            padding: EdgeInsets.fromLTRB(0.sp,0.sp,20.sp,16.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(AppStrings.trendingNow,style: AppTextStyles.poppinsH5Bold,),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(AppStrings.seeAll,style: AppTextStyles.poppinsLabelBold,),
                    const Icon(Icons.arrow_forward_rounded, color: AppColors.buttonPrimaryNoIconLargeColor,)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 254.sp,
            child: ListView.builder(
                itemCount: listFoodTrending.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routers.recipeDetail,
                          arguments: listFoodTrending[index].idMeal);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.sp),
                      child: ItemVideo(meal: listFoodTrending[index]),
                    ),
                  );
                },
              ),
          ),
        ]
      ),
    );
  }

}
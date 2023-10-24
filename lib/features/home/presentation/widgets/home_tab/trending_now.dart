import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/providers/home_state/home_state_provider.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/item_video_home.dart';
import 'package:food_recipe_app/routes/app_route.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrendingNowWidget extends HookConsumerWidget{
  const TrendingNowWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeNotifierTrendingProvider);
    List<Meals> listFoodTrending = state.productList as List<Meals>;
    final scrollController = useScrollController();
    scrollController.addListener(() {
      double maxScroll = scrollController.position.maxScrollExtent;
      double currentScroll = scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.width * 0.20;
      if (maxScroll - currentScroll <= delta) {
        // ref.read(homeNotifierTrendingProvider.notifier).();
      }
    });
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 12.h, 0, 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
        children:[
          Padding(
            padding: EdgeInsets.fromLTRB(0.w,0.h,20.w,16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Expanded(
                      child: Text(
                    AppStrings.trendingNow,
                    style: AppTextStyles.poppinsH5Bold,
                  )),
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
          SingleChildScrollView(scrollDirection: Axis.horizontal,child: Row(
            children: [
              ...List.generate(listFoodTrending.length, (index) => GestureDetector(
                    onTap: () {
                      context.pushRoute(RecipeDetailsRoute(idMeal: listFoodTrending[index].idMeal??''));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: ItemVideo(meal: listFoodTrending[index]),
                    ),
                  ))
            ],
          ),),
        ]
      ),
    );
  }
}
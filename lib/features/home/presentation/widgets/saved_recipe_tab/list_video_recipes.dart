import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/providers/trending_now_state/trending_now_state_provider.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/item_video_home.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';

class ListVideoRecipes extends ConsumerWidget{
  const ListVideoRecipes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(trendingNowNotifierProvider);
    List<Meals> listFoodTrending = state.productList;
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return ListView.custom(
      padding: EdgeInsets.zero,
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: ItemVideo(
            meal: listFoodTrending[index],
            size: Size(335.w, 209.h),
            isMarked: true,
          ),
        );
      }, childCount: listFoodTrending.length),
    );
  }
}
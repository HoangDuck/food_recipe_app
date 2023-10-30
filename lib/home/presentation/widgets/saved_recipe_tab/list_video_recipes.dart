import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/home/shared/trending_now_state_provider.dart';
import 'package:food_recipe_app/home/presentation/widgets/item_video_home.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';

class ListVideoRecipes extends ConsumerWidget{
  const ListVideoRecipes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Meals> listFoodTrending =
        ref.watch(trendingNowNotifierProvider.select((state) {
      return state.productList;
    }));
    ScreenUtil.init(context, designSize: const Size(375,812));

    return ListView.custom(
      padding: EdgeInsets.zero,
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: ItemVideo(
            meal: listFoodTrending[index],
            size: Size(335, 180),
            isMarked: true,
          ),
        );
      }, childCount: listFoodTrending.length),
    );
  }
}
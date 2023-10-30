import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/app_configs.dart';
import 'package:food_recipe_app/core/presentation/widgets/prototype_wiget.dart';
import 'package:food_recipe_app/home/shared/trending_now_state_provider.dart';
import 'package:food_recipe_app/home/presentation/widgets/item_video_home.dart';
import 'package:food_recipe_app/routes/app_route.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/core/presentation/theme/app_colors.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrendingNowWidget extends HookConsumerWidget{
  const TrendingNowWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Meals> listFoodTrending = ref.watch(
      trendingNowNotifierProvider.select(
        (state) => state.productList,
      ),
    );
    final scrollController = useScrollController();
    useEffect(() {
      listenerLoadMore(){
        double maxScroll = scrollController.position.maxScrollExtent;
        double currentScroll = scrollController.position.pixels;
        double delta = MediaQuery.of(context).size.width * 0.20;
        if (maxScroll - currentScroll <= delta) {

        }
      }
      scrollController.addListener(listenerLoadMore);
      return (){
        scrollController.removeListener(listenerLoadMore);
      };
    }, [key]);
    ScreenUtil.init(context, designSize: const Size(375,812));
    return Padding(
      padding: EdgeInsets.fromLTRB(0.w, 12.h, 0, 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
        children:[
          Padding(
            padding: EdgeInsets.fromLTRB(20.w,0.h,20.w,16.h),
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
          PrototypeListViewHorizontal(
            prototype: GestureDetector(
              onTap: () {
                context.pushRoute(RecipeDetailsRoute(idMeal: ''));
              },
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: ItemVideo(meal: Meals(strMealThumb: AppConfig.randomImageUrl,strMeal: 'as',strArea: 'as'),
                  size: Size(280, 180),
                ),
              ),
            ),
            listView: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listFoodTrending.length,
              padding: EdgeInsets.only(left: 20.w),
              itemBuilder: (_, index) {
                debugPrint(listFoodTrending[index].strMeal);
                return GestureDetector(
                  onTap: () {
                    context.pushRoute(RecipeDetailsRoute(
                        idMeal: listFoodTrending[index].idMeal ?? ''));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.w),
                    child: ItemVideo(
                      meal: listFoodTrending[index],
                      size: Size(280, 180),
                    ),
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
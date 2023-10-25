import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/providers/recipe_detail_state/recipe_detail_state_provider.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/providers/recipe_detail_state/state/recipe_detail_state.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/widgets/list_ingredients.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/widgets/video_recipe_detail.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

@RoutePage()
class RecipeDetailsScreen extends ConsumerWidget{
  final String idMeal;
  const RecipeDetailsScreen({super.key,required this.idMeal});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    final state = ref.watch(mealNotifierProvider(idMeal));
    if(state.state == RecipeDetailConcreteState.loading){
      return const Center(child: CircularProgressIndicator());
    } else{
      Meals meal = state.meal!;
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20.w, 56.h, 20.w, 12.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap:(){
                            context.popRoute();
                          },
                          child: Container(
                            width: 24.sp,
                            height: 24.sp,
                            padding: EdgeInsets.zero,
                            child: const Icon(Icons.arrow_back_rounded),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap:(){
                          },
                          child: Container(
                            width: 24.sp,
                            height: 24.sp,
                            padding: EdgeInsets.zero,
                            child: const Icon(Icons.more_horiz),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: Text(
                        meal.strMeal ?? '',
                        style: AppTextStyles.poppinsH4Bold,
                      ),
                    )
                  ],
                ),
              ),
              VideoRecipeDetail(meal: meal,),
              ListIngredients(
                listIngredients: meal.listIngredients,
              ),
            ],
          ),
        ),
      );
    }
  }
}
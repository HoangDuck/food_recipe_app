
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/create_recipe/presentation/screens/create_recipe.dart';
import 'package:food_recipe_app/home/presentation/screens/home.dart';
import 'package:food_recipe_app/onboarding/presentation/screens/onboarding.dart';
import 'package:food_recipe_app/recipe_details/presentation/screens/recipe_details.dart';
import 'package:food_recipe_app/search_meals/presentation/screens/search_recipe.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRoute extends _$AppRoute {

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnBoardingRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: CreateRecipeRoute.page),
        AutoRoute(
          path: '/recipe_detail/:id',
          page: RecipeDetailsRoute.page,
        ),
        AutoRoute(
          path: '/search_recipe/:search',
          page: SearchRecipeRoute.page,
        ),
      ];
}
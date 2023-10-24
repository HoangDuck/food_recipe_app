
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/features/create_recipe/presentation/screens/create_recipe.dart';
import 'package:food_recipe_app/features/home/presentation/screens/home.dart';
import 'package:food_recipe_app/features/onboarding/presentation/screens/onboarding.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/screens/recipe_details.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRoute extends _$AppRoute {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnBoardingRoute.page,initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: CreateRecipeRoute.page),
    AutoRoute(page: RecipeDetailsRoute.page),
  ];
}
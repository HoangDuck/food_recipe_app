
import 'package:flutter/material.dart';
import 'package:food_recipe_app/features/create_recipe/presentation/screens/create_recipe.dart';
import 'package:food_recipe_app/features/home/presentation/screens/home.dart';
import 'package:food_recipe_app/features/onboarding/presentation/screens/onboarding.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/screens/recipe_details.dart';
class Routers {
  static const String home = '/Home';
  static const String onBoarding = '/OnBoarding';
  static const String recipeDetail = '/RecipeDetail';
  static const String createRecipe = '/CreateRecipe';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) => route(settings),
        settings: RouteSettings(name: settings.name),
    );
  }

  static route(RouteSettings settings) {
    Widget routingWidget = Container();
    switch (settings.name) {
      case onBoarding:
        routingWidget = const OnBoarding();
        break;
      case home:
        routingWidget = const Home();
      case recipeDetail:
        routingWidget = RecipeDetails(
          idMeal: settings.arguments.toString(),
        );
      case createRecipe:
        routingWidget = const CreateRecipe();
      default:
        routingWidget = Container();
    }

    return routingWidget;
  }
}
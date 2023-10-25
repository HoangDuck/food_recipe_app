// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRoute extends RootStackRouter {
  // ignore: unused_element
  _$AppRoute({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CreateRecipeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateRecipeScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingScreen(),
      );
    },
    RecipeDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RecipeDetailsRouteArgs>(
          orElse: () =>
              RecipeDetailsRouteArgs(idMeal: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RecipeDetailsScreen(
          key: args.key,
          idMeal: args.idMeal,
        ),
      );
    },
  };
}

/// generated route for
/// [CreateRecipeScreen]
class CreateRecipeRoute extends PageRouteInfo<void> {
  const CreateRecipeRoute({List<PageRouteInfo>? children})
      : super(
          CreateRecipeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateRecipeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingScreen]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecipeDetailsScreen]
class RecipeDetailsRoute extends PageRouteInfo<RecipeDetailsRouteArgs> {
  RecipeDetailsRoute({
    Key? key,
    required String idMeal,
    List<PageRouteInfo>? children,
  }) : super(
          RecipeDetailsRoute.name,
          args: RecipeDetailsRouteArgs(
            key: key,
            idMeal: idMeal,
          ),
          rawPathParams: {'id': idMeal},
          initialChildren: children,
        );

  static const String name = 'RecipeDetailsRoute';

  static const PageInfo<RecipeDetailsRouteArgs> page =
      PageInfo<RecipeDetailsRouteArgs>(name);
}

class RecipeDetailsRouteArgs {
  const RecipeDetailsRouteArgs({
    this.key,
    required this.idMeal,
  });

  final Key? key;

  final String idMeal;

  @override
  String toString() {
    return 'RecipeDetailsRouteArgs{key: $key, idMeal: $idMeal}';
  }
}

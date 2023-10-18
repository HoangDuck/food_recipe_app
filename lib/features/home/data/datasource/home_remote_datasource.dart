
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/shared/data/remote/network_service.dart';
import 'package:food_recipe_app/shared/domain/models/categories/categories.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart' as meals;
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories.dart' as meal_by_category;

abstract class HomeDatasource {
  Future<Either<AppException, List<meals.Meals>>> fetchTrendingMeals();
  Future<Either<AppException, List<meals.Meals>>> fetchMealsRecentRecipe();
  Future<Either<AppException, List<meals.Meals>>> searchMeals({String query=''});
  Future<Either<AppException, List<Categories>>> fetchAllCategories();
  Future<Either<AppException, List<meal_by_category.Meals>>> fetchMealByCategories({String category = ''});
}

class HomeRemoteDatasource extends HomeDatasource {
  final NetworkService networkService;
  HomeRemoteDatasource(this.networkService);

  @override
  Future<Either<AppException, List<meals.Meals>>> fetchTrendingMeals() async {
    // TODO: implement fetchTrendingMeals
    // TODO: implement searchMeals
    final response = await networkService.get(
      '/search.php?s=a',
    );

    return response.fold(
          (l) => Left(l),
          (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'get list food',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final resultSearchResponse = meals.MealModel.fromJson(jsonData['meals'] ?? []);
        return Right(resultSearchResponse.meals);
      },
    );
  }

  @override
  Future<Either<AppException, List<meals.Meals>>> searchMeals({String query = ''}) async {
    // TODO: implement searchMeals
    final response = await networkService.get(
      '/search.php?f=$query',
    );

    return response.fold(
          (l) => Left(l),
          (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'search food',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final resultSearchResponse = meals.MealModel.fromJson(jsonData['meals'] ?? []);
        return Right(resultSearchResponse.meals);
      },
    );
  }

  @override
  Future<Either<AppException, List<Categories>>> fetchAllCategories() async {
    // TODO: implement fetchAllCategories
    final response = await networkService.get(
      '/categories.php',
    );

    return response.fold(
          (l) => Left(l),
          (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'get list category',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final resultSearchResponse = CategoryModel.fromJson(jsonData);
        return Right(resultSearchResponse.categories);
      },
    );
  }

  @override
  Future<Either<AppException, List<meal_by_category.Meals>>> fetchMealByCategories({String category = ''}) async {
    // TODO: implement fetchMealByCategories
    final response = await networkService.get(
      '/filter.php?c=$category',
    );

    return response.fold(
          (l) => Left(l),
          (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'get list meal by category',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final resultSearchResponse = MealByCategoryModel.fromJson(jsonData);
        return Right(resultSearchResponse.meals);
      },
    );
  }

  @override
  Future<Either<AppException, List<meals.Meals>>> fetchMealsRecentRecipe() async {
    // TODO: implement fetchMealsRecentRecipe
    final response = await networkService.get(
      '/search.php?f=a',
    );

    return response.fold(
          (l) => Left(l),
          (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'get list meal by category',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final resultSearchResponse = meals.MealModel.fromJson(jsonData['meals'] ?? []);
        return Right(resultSearchResponse.meals);
      },
    );
  }

}
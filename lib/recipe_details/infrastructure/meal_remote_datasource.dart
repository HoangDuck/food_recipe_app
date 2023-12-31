
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';
import 'package:food_recipe_app/core/infrastructure/remote/remote.dart';
import 'package:food_recipe_app/core/domain/models/ingredients/ingredients.dart';
import 'package:food_recipe_app/core/domain/models/meals/meal_list.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/core/presentation/theme/app_images.dart';

abstract class MealDatasource {
  Future<Either<AppException, Meals>> fetchMealDetail({required String idMeal});
  Future<Either<AppException, List<Ingredients>>> fetchMealDetailIngredient({required String idMeal});
}

class MealRemoteDataSource extends MealDatasource{
  final NetworkService networkService;
  MealRemoteDataSource(this.networkService);

  @override
  Future<Either<AppException, Meals>> fetchMealDetail({required String idMeal}) async {
    // TODO: implement fetchMealDetail
    final response = await networkService.get(
      '/lookup.php?i=$idMeal',
    );

    return response.fold(
          (l) => Left(l),
          (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'get detail recipe food',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final resultSearchResponse = MealList.fromJson(jsonData??[]);
        if(resultSearchResponse.meals.isNotEmpty){
          Meals meal = resultSearchResponse.meals.first;
          return Right(meal.copyWith(listIngredients: [
            Ingredients(idIngredient: '1',nameIngredient: meal.strIngredient1,imgIngredient: AppImages.imgIconNoodles,quantity: '200g'),
            Ingredients(idIngredient: '2',nameIngredient: meal.strIngredient2,imgIngredient: AppImages.imgIconSushi,quantity: '200g'),
            Ingredients(idIngredient: '3',nameIngredient: meal.strIngredient3,imgIngredient: AppImages.imgIconNoodles,quantity: '200g'),
            Ingredients(idIngredient: '4',nameIngredient: meal.strIngredient4,imgIngredient: AppImages.imgIconSushi,quantity: '200g'),
            Ingredients(idIngredient: '5',nameIngredient: meal.strIngredient5,imgIngredient: AppImages.imgIconSushi,quantity: '200g'),
          ]));
        }
        return Left(
          AppException(
            identifier: 'get detail recipe food',
            statusCode: 0,
            message: 'The data is not in the valid format.',
          ),
        );
      },
    );
  }

  @override
  Future<Either<AppException, List<Ingredients>>> fetchMealDetailIngredient({required String idMeal}) {
    // TODO: implement fetchMealDetailIngredient
    throw UnimplementedError();
  }
}
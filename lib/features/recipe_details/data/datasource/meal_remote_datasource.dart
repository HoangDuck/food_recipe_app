
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/shared/data/remote/network_service.dart';
import 'package:food_recipe_app/shared/domain/models/ingredients/ingredients.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';
import 'package:food_recipe_app/shared/theme/app_images.dart';

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
        final resultSearchResponse = MealModel.fromJson(jsonData['meals']??[]);
        if(resultSearchResponse.meals.isNotEmpty){
          Meals meal = resultSearchResponse.meals.first;
          meal.listIngredients.addAll([
            Ingredients(idIngredient: '1',nameIngredient: meal.strIngredient1,imgIngredient: AppImages.imgIconNoodles,quantity: '200g'),
            Ingredients(idIngredient: '2',nameIngredient: meal.strIngredient2,imgIngredient: AppImages.imgIconSushi,quantity: '200g'),
            Ingredients(idIngredient: '3',nameIngredient: meal.strIngredient3,imgIngredient: AppImages.imgIconNoodles,quantity: '200g'),
            Ingredients(idIngredient: '4',nameIngredient: meal.strIngredient4,imgIngredient: AppImages.imgIconSushi,quantity: '200g'),
            Ingredients(idIngredient: '5',nameIngredient: meal.strIngredient5,imgIngredient: AppImages.imgIconSushi,quantity: '200g'),
          ]);
          return Right(meal);
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

import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/domain/models/users/statistic.dart';
import 'package:food_recipe_app/shared/domain/models/users/user.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

abstract class UserDatasourceLocal {
  Future<Either<AppException, User>> fetchUserData();
}

class UserLocalDataSource extends UserDatasourceLocal{


  static User user = User(
    idUser: '1',
    fullName: 'Alessandra Blair',
    intro:
        'Hello world I’m Alessandra Blair, I’m from Italy 🇮🇹 I love cooking so much!',
    avatar: 'https://i.pravatar.cc/300',
    statistic:
        const Statistic(recipe: 3, videos: 13, followers: 14000, following: 130),
    meals: [
        Meals(
            idMeal: '1',
            strMeal: 'How to make Italian Spaghetti at home',
            strMealThumb:
                'https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg'),
        Meals(
            idMeal: '2',
            strMeal: 'Simple chicken meal prep dishes',
            strMealThumb:
            'https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg'),
        Meals(
            idMeal: '3',
            strMeal: 'Japanese fried rice',
            strMealThumb:
            'https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg'),
      Meals(
          idMeal: '1',
          strMeal: 'How to make Italian Spaghetti at home',
          strMealThumb:
          'https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg'),
      Meals(
          idMeal: '2',
          strMeal: 'Simple chicken meal prep dishes',
          strMealThumb:
          'https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg'),
      Meals(
          idMeal: '3',
          strMeal: 'Japanese fried rice',
          strMealThumb:
          'https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg'),
      Meals(
          idMeal: '1',
          strMeal: 'How to make Italian Spaghetti at home',
          strMealThumb:
          'https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg'),
      Meals(
          idMeal: '2',
          strMeal: 'Simple chicken meal prep dishes',
          strMealThumb:
          'https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg'),
      Meals(
          idMeal: '3',
          strMeal: 'Japanese fried rice',
          strMealThumb:
          'https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg'),
      ]
  );

  @override
  Future<Either<AppException, User>> fetchUserData() async {
    // TODO: implement fetchUserData
    return Right(user);
  }


}
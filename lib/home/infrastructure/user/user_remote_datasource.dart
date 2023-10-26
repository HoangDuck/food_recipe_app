
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';
import 'package:food_recipe_app/core/infrastructure/remote/network_service.dart';
import 'package:food_recipe_app/core/domain/models/users/user.dart';

abstract class UserDatasource {
  Future<Either<AppException, User>> fetchUserData();
}

class UserRemoteDataSource extends UserDatasource{
  final NetworkService networkService;
  UserRemoteDataSource(this.networkService);

  @override
  Future<Either<AppException, User>> fetchUserData() {
    // TODO: implement fetchUserData
    throw UnimplementedError();
  }


}
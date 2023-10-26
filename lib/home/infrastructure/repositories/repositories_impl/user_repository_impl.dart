
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';
import 'package:food_recipe_app/home/infrastructure/repositories/user_repository.dart';
import 'package:food_recipe_app/core/domain/models/users/user.dart';
import 'package:food_recipe_app/home/infrastructure/user/user_local_datasource.dart';
import 'package:food_recipe_app/home/infrastructure/user/user_remote_datasource.dart';

class UserRepositoryImpl implements UserRepository{
  final UserDatasource userDatasource;
  final UserDatasourceLocal userDatasourceLocal;
  UserRepositoryImpl(this.userDatasource,this.userDatasourceLocal);

  @override
  Future<Either<AppException, User>> fetchUserData() {
    // TODO: implement fetchUserData
    return userDatasourceLocal.fetchUserData();
  }


}
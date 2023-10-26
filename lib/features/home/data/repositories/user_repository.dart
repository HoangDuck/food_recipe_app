
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/features/home/data/datasource/user/user_local_datasource.dart';
import 'package:food_recipe_app/features/home/data/datasource/user/user_remote_datasource.dart';
import 'package:food_recipe_app/features/home/domain/repositories/user_repository.dart';
import 'package:food_recipe_app/core/domain/models/users/user.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

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
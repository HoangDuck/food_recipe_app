import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';

class User {
  User({
    this.idUser,
    this.fullName,
    this.intro,
    this.statistic,
    this.meals = const [],
    this.avatar = '',
  });
  late final String? idUser;
  late final String? fullName;
  late final String? intro;
  late final Statistic? statistic;
  late final List<Meals> meals;
  late final String avatar;

  User.fromJson(Map<String, dynamic> json){
    idUser = json['idUser'];
    fullName = json['fullName'];
    intro = json['intro'];
    statistic = Statistic.fromJson(json['statistic']);
    meals = MealModel.fromJson(json['meals']).meals;
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['idUser'] = idUser;
    data['fullName'] = fullName;
    data['intro'] = intro;
    data['statistic'] = statistic == null ? Statistic() : statistic!.toJson();
    data['meals'] = meals;
    data['avatar'] = avatar;
    return data;
  }
}

class Statistic {
  Statistic({
    this.recipe = 0,
    this.videos = 0,
    this.followers = 0,
    this.following = 0,
  });
  late final int recipe;
  late final int videos;
  late final int followers;
  late final int following;

  Statistic.fromJson(Map<String, dynamic> json){
    recipe = json['recipe'];
    videos = json['videos'];
    followers = json['followers'];
    following = json['following'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['recipe'] = recipe;
    data['videos'] = videos;
    data['followers'] = followers;
    data['following'] = following;
    return data;
  }
}
import 'package:food_recipe_app/create_recipe/presentation/model/form_ingredient_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final formIngredientListProvider =
    NotifierProvider<FormIngredientList, List<FormIngredient>>(
        FormIngredientList.new);

class IngredientsModel {
  IngredientsModel({
    required this.ingredients,
  });
  late final Ingredients ingredients;

  IngredientsModel.fromJson(Map<String, dynamic> json){
    ingredients = Ingredients.fromJson(json['ingredients']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['ingredients'] = ingredients.toJson();
    return data;
  }
}

class Ingredients {
  Ingredients({
    this.idIngredient,
    this.imgIngredient,
    this.nameIngredient,
    this.quantity,
  });
  late final String? idIngredient;
  late final String? imgIngredient;
  late final String? nameIngredient;
  late final String? quantity;

  Ingredients.fromJson(Map<String, dynamic> json){
    idIngredient = json['idIngredient'];
    imgIngredient = json['imgIngredient'];
    nameIngredient = json['nameIngredient'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['idIngredient'] = idIngredient;
    data['imgIngredient'] = imgIngredient;
    data['nameIngredient'] = nameIngredient;
    data['quantity'] = quantity;
    return data;
  }
}
class CategoryModel {
  CategoryModel({
    required this.categories,
  });
  late final List<Categories> categories;

  CategoryModel.fromJson(Map<String, dynamic> json){
    categories = List.from(json['categories']).map((e)=>Categories.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['categories'] = categories.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Categories {
  Categories({
    this.idCategory,
    this.strCategory,
    this.strCategoryThumb,
    this.strCategoryDescription,
  });
  late final String? idCategory;
  late final String? strCategory;
  late final String? strCategoryThumb;
  late final String? strCategoryDescription;

  Categories.fromJson(Map<String, dynamic> json){
    idCategory = json['idCategory'];
    strCategory = json['strCategory'];
    strCategoryThumb = json['strCategoryThumb'];
    strCategoryDescription = json['strCategoryDescription'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['idCategory'] = idCategory;
    data['strCategory'] = strCategory;
    data['strCategoryThumb'] = strCategoryThumb;
    data['strCategoryDescription'] = strCategoryDescription;
    return data;
  }
}
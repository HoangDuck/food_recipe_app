class IconTabModel {
  String enableImage;
  String disableImage;

  IconTabModel({
    required this.enableImage,
    required this.disableImage,
  });

  factory IconTabModel.fromJson(Map<String, dynamic> json) => IconTabModel(
    enableImage: json["enableImage"],
    disableImage: json["disableImage"],
  );

  Map<String, dynamic> toJson() => {
    "enableImage": enableImage,
    "disableImage": disableImage,
  };
}

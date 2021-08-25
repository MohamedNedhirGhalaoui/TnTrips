class SubServiceCategoryImage {
  final String imageName;
  const SubServiceCategoryImage({required this.imageName});

  factory SubServiceCategoryImage.fromJson(Map<String, dynamic> json) {
    return SubServiceCategoryImage(imageName: json['imageName']);
  }

  static List<SubServiceCategoryImage> fromJsonArray(List<dynamic> jsonParts) {
    List<SubServiceCategoryImage> gallery = [];

    jsonParts.forEach((jsonData) {
      gallery.add(SubServiceCategoryImage.fromJson(jsonData));
    });

    return gallery;
  }
}

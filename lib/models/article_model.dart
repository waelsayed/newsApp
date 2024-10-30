class ArticleModel {
  final String urlToImage;
  final String title;
  final String description;
  ArticleModel({required this.urlToImage, required this.title,
   required this.description});
  @override
  String toString() {
    return "image : $urlToImage , title : $title ";
  }

  factory ArticleModel.fromMap(Map<String, dynamic> map) {
    return ArticleModel(
      urlToImage: map['urlToImage'] ?? '',
      title: map['title'] ?? '',
      description : map['description'] ?? '' );
  }
  //  description: map['description'] ?? '');

  // Convert ArticleModel to Map
  Map<String, dynamic> toMap() {
    return {
      'urlToImage': urlToImage,
      'title': title,
      'description': description
    };
  }

  static dynamic MapListToObject(List<dynamic> list, Map<String, dynamic> obj) {
    List<Map<String, dynamic>> any = [];

    for (var item in list) {
      // Create a new copy of the object map for each iteration
      Map<String, dynamic> clonedObj = Map<String, dynamic>.from(obj);

      item.forEach((key, value) {
        if (clonedObj.containsKey(key)) {
          clonedObj[key] = value;
        }
      });
    
      any.add(clonedObj); // Add the cloned object to the list
    }

    return any;
  }
}

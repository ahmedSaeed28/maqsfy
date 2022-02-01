class Category{
  final int id;
  final String title;
  final String image;

  Category(this.id, this.title, this.image);

  Category.fromMap(Map<String, dynamic> map) :
        id = map['id'].toInt(),
        title = map['title'],
        image = map['image'];

  Map<String, dynamic> toMap() {
    return {'id': id.toString(), 'title': title, 'image': image};
  }

  static List<Category> fromListJson(dynamic json) =>
      (json as List<dynamic>).map((album) => Category.fromMap(album)).toList();
}

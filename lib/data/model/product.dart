class Product{
  final int id;
  final String title;
  final String image;
  final int stock;
  final int cal;
  final double price;

  Product(this.id, this.title, this.image, this.stock, this.cal, this.price);

  Product.fromMap(Map<String, dynamic> map) :
        id = map['id'].toInt(),
        title = map['title'],
        image = map['image'],
        stock = map['stock'].toInt(),
        cal = map['cal'].toInt(),
        price = map['price'].toDouble();

  Map<String, dynamic> toMap() {
    return {'id': id.toString(), 'title': title, 'image': image,
      'stock': stock.toString(), 'cal': cal.toString(),
      'price': price.toString()};
  }

  static List<Product> fromListJson(dynamic json) =>
      (json as List<dynamic>).map((album) => Product.fromMap(album)).toList();
}

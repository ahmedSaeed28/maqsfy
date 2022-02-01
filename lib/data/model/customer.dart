class Customer{
  final int id;
  final String name;
  final String image;
  final double balance;
  final double dailyLimit;

  Customer(this.id, this.name, this.image, this.balance, this.dailyLimit);

  Customer.fromMap(Map<String, dynamic> map) :
        id = map['id'].toInt(),
        name = map['name'], image = map['image'],
        balance = map['balance'].toDouble(),
        dailyLimit = map['dailyLimit'].toDouble();

  Map<String, dynamic> toMap() {
    return {'id': id.toString(), 'name': name, 'balance': balance.toString(),
      'image': image, 'dailyLimit': dailyLimit.toString()};
  }

  static List<Customer> fromListJson(dynamic json) =>
      (json as List<dynamic>).map((album) => Customer.fromMap(album)).toList();
}

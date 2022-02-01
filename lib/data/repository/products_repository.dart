import 'dart:convert';
import 'package:maqsfy/data/model/product.dart';
import 'package:flutter/services.dart' show rootBundle;

class ProductsRepository{
  Future<List<Product>> getProducts() async{
    final response = await rootBundle.loadString('assets/products.json');
    return Product.fromListJson(json.decode(response)['products']);
  }
}

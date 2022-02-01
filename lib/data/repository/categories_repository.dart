import 'dart:convert';
import 'package:maqsfy/data/model/category.dart';
import 'package:flutter/services.dart' show rootBundle;

class CategoriesRepository{
  Future<List<Category>> getCategories() async{
    final response = await rootBundle.loadString('assets/products.json');
    return Category.fromListJson(json.decode(response)['categories']);
  }
}

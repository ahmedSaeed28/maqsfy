import 'package:get/get.dart';
import 'package:maqsfy/controllers/categories_controllers.dart';
import 'package:maqsfy/controllers/products_controllers.dart';
import 'package:maqsfy/data/model/category.dart';
import 'package:maqsfy/data/repository/categories_repository.dart';
import 'package:maqsfy/data/repository/products_repository.dart';

class ProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoriesRepository());
    Get.put(CategoriesController(Get.find()));
    Get.put(ProductsRepository());
    Get.put(ProductsController(Get.find()));
  }
}

import 'package:get/get.dart';
import 'package:maqsfy/controllers/products_controllers.dart';
import 'package:maqsfy/data/model/cart.dart';
import 'package:maqsfy/data/model/product.dart';

class CartController extends GetxController with StateMixin<Cart> {

  @override
  void onInit() {
    super.onInit();
    change(Cart(), status: RxStatus.success());
  }

  void addProduct(Product product) {
    state?.add(product);
    Get.find<ProductsController>().update();
  }

  void removeProduct(Product product) {
    state?.remove(product);
    Get.find<ProductsController>().update();
  }
}

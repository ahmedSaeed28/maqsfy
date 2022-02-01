import 'package:get/get.dart';
import 'package:maqsfy/controllers/cart_controllers.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CartController());
  }
}

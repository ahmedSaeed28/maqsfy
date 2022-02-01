import 'package:get/get.dart';
import 'package:maqsfy/data/model/product.dart';
import 'package:maqsfy/data/repository/products_repository.dart';

class ProductsController extends GetxController with StateMixin<List<Product>> {

  final ProductsRepository productsRepository;

  ProductsController(this.productsRepository);

  @override
  void onInit() {
    super.onInit();
    _getProducts();
  }

  void _getProducts() async {
    await productsRepository.getProducts().then((data){
      change(data, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }
}

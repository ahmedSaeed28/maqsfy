import 'package:get/get.dart';
import 'package:maqsfy/data/model/category.dart';
import 'package:maqsfy/data/repository/categories_repository.dart';

class CategoriesController extends GetxController with StateMixin<List<Category>> {

  final CategoriesRepository categoriesRepository;

  CategoriesController(this.categoriesRepository);

  @override
  void onInit() {
    super.onInit();
    _getCategories();
  }

  void _getCategories() async {
    await categoriesRepository.getCategories().then((data){
      change(data, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }
}

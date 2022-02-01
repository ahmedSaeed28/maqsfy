import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maqsfy/controllers/cart_controllers.dart';
import 'package:maqsfy/controllers/categories_controllers.dart';
import 'package:maqsfy/controllers/products_controllers.dart';
import 'package:maqsfy/resources/app_color.dart';
import 'package:maqsfy/view/widgets/cart_card_landscape.dart';
import 'package:maqsfy/view/widgets/categories_grid.dart';
import 'package:maqsfy/view/widgets/home_bar.dart';
import 'package:maqsfy/view/widgets/products_grid.dart';

class ProductsLandscape extends GetView<ProductsController> {

  const ProductsLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) =>
      Row(
        children: [
          Flexible(
            flex: 2,
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: GetBuilder<CategoriesController>(
                      builder: (categories) => CategoriesGrid(
                        categories: categories.state!,
                        onPress: (index) => {},
                      )
                  ),
                ),
                Expanded(
                  child: ProductsGrid(
                      column: 4,
                      products: state!,
                      onPress: (product) =>
                          Get.find<CartController>().addProduct(product)
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: lightGreenColor,
              child: Expanded(
                child: Column(
                  children: [
                    HomeBar(
                      searchController: TextEditingController(),
                      onSearchPress: (){},
                      onFindPress: (){},
                    ),
                    Expanded(
                      child: GetBuilder<CartController>(
                          builder: (cart) => Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: CartCardLandscape(
                                cart: cart.state!,
                                onPress: (index) => {},
                                onRemove: (product) =>
                                    Get.find<CartController>().removeProduct(product)
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}

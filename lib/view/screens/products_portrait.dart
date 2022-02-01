import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maqsfy/controllers/cart_controllers.dart';
import 'package:maqsfy/controllers/categories_controllers.dart';
import 'package:maqsfy/controllers/products_controllers.dart';
import 'package:maqsfy/data/model/customer.dart';
import 'package:maqsfy/resources/app_color.dart';
import 'package:maqsfy/view/widgets/cart_card_portrait.dart';
import 'package:maqsfy/view/widgets/categories_grid.dart';
import 'package:maqsfy/view/widgets/custom_app_bar.dart';
import 'package:maqsfy/view/widgets/customer_card_portrait.dart';
import 'package:maqsfy/view/widgets/home_bar.dart';
import 'package:maqsfy/view/widgets/products_grid.dart';

class ProductsPortrait extends GetView<ProductsController> {

  const ProductsPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) =>
      SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            CustomAppBar(
              title: 'مقصفي',
              widget: HomeBar(
                searchController: TextEditingController(),
                onSearchPress: (){},
                onFindPress: (){},
              )
            ),
            Positioned(
              top: AppBar().preferredSize.height*3.3 - 20,
              left: 0.0,
              right: 0.0,
              bottom: 0,
              child: Column(
                children: [
                  GetBuilder<CartController>(
                      builder: (cart) => Container(
                        decoration: const BoxDecoration(
                            color: lightGreenColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)
                            )
                        ),
                        child: CartCardPortrait(
                            cart: cart.state!,
                            onPress: (index) => {},
                            onRemove: (product) =>
                                Get.find<CartController>().removeProduct(product)
                        ),
                      )
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
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
                        products: state!,
                        onPress: (product) =>
                            Get.find<CartController>().addProduct(product)
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

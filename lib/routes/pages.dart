import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:maqsfy/binding/products_binding.dart';
import 'package:maqsfy/routes/routes.dart';
import 'package:maqsfy/view/screens/home_screen.dart';
import 'package:maqsfy/view/screens/products_portrait.dart';

class Pages {
  static final routes = [
    GetPage(
      name: Routes.products,
      page: () =>  const HomeScreen(key: Key(Routes.products)),
      binding: ProductsBinding()
    )
  ];
}

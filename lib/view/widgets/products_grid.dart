import 'package:flutter/material.dart';
import 'package:maqsfy/data/model/product.dart';
import 'package:maqsfy/resources/app_color.dart';
import 'package:maqsfy/view/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget  {

  int column;
  final List<Product> products;
  final Function onPress;

  ProductsGrid({Key? key, required this.products, required this.onPress,
      this.column = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: column,
        childAspectRatio: column==2 ? 0.68 : 0.85
      ),
      padding: const EdgeInsets.all(5),
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: ProductItem(
            key: Key(products[index].id.toString()),
            product: products[index],
            onPress: onPress,
          ),
        );
      },
    );
  }
}

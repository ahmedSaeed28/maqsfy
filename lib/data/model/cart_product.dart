import 'package:maqsfy/data/model/product.dart';

class CartProduct{
  int count = 0;
  final Product product;

  CartProduct(this.product) : count = 1;
}

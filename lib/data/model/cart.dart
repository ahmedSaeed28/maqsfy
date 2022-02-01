import 'package:maqsfy/data/model/cart_product.dart';
import 'package:maqsfy/data/model/product.dart';

class Cart{
  double total = 0;
  Map<int, CartProduct> products = {};

  void add(Product product){
    if(products.containsKey(product.id)){
      products[product.id]?.count += 1;
    } else{
      products[product.id] = CartProduct(product);
    }
    total += product.price;
  }

  void remove(Product product){
    if(products[product.id]!.count > 1){
      products[product.id]?.count -= 1;
    } else {
      products.remove(product.id);
    }
    total -= product.price;
  }
}

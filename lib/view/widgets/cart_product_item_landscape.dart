import 'package:flutter/material.dart';
import 'package:maqsfy/data/model/cart_product.dart';
import 'package:maqsfy/resources/app_color.dart';

class CartProductItemLandScape extends StatelessWidget{

  final CartProduct cartProduct;
  final Function onPress;

  const CartProductItemLandScape({Key? key, required this.cartProduct,
    required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 1,
            child: Image.asset(
            'assets/images/${cartProduct.product.image}.png',
              height: 70,
              width: 70,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                cartProduct.product.title,
                style: const TextStyle(
                  color: blackColor,
                ),
              ),
              Text(
                '${cartProduct.product.price} ريال     ' ' * ${cartProduct.count}',
                style: const TextStyle(
                  color: lightGreenColor,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => onPress(cartProduct.product),
                child: Container(
                  decoration: const BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  padding: const EdgeInsets.all(3),
                  child: const Icon(
                    Icons.delete_outline,
                    color: whiteColor,
                    size: 18,
                  ),
                ),
              ),
              Text(
                '${cartProduct.count * cartProduct.product.price} ريال ',
                style: const TextStyle(
                  color: blackColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

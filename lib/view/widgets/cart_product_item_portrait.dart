import 'package:flutter/material.dart';
import 'package:maqsfy/data/model/cart_product.dart';
import 'package:maqsfy/resources/app_color.dart';

class CartProductItemPortrait extends StatelessWidget{

  final CartProduct cartProduct;
  final Function onPress;

  const CartProductItemPortrait({Key? key, required this.cartProduct,
    required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: grayColor,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))
          ),
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          margin: const EdgeInsets.only(top: 10, left: 10),
          child: Image.asset(
            'assets/images/${cartProduct.product.image}.png',
            height: 60,
            width: 60,
          ),
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: lightGreenColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                padding: const EdgeInsets.fromLTRB(7, 3, 7, 3),
                child: Text(
                  '${cartProduct.count}',
                  style: const TextStyle(
                    color: whiteColor,
                  ),
                ),
              ),
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
              )
            ],
          ),
        )
      ],
    );
  }
}

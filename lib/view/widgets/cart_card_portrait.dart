import 'package:flutter/material.dart';
import 'package:maqsfy/data/model/cart.dart';
import 'package:maqsfy/data/model/customer.dart';
import 'package:maqsfy/resources/app_color.dart';
import 'package:maqsfy/view/widgets/cart_product_item_portrait.dart';
import 'package:maqsfy/view/widgets/customer_card_portrait.dart';

class CartCardPortrait extends StatelessWidget{

  final Cart cart;
  final Function onPress;
  final Function onRemove;

  const CartCardPortrait({Key? key, required this.cart, required this.onPress,
    required this.onRemove}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return cart.products.isNotEmpty ? Column(
      children: [
        CustomerCardPortrait(
          customer: Customer(135, 'محمد بن عبد الله الفلاج',
              'assets/images/kid.png', 10.000, 15.00),
        ),
        Container(
          height: 160,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: cart.products.length,
                  itemBuilder: (context, index) {
                    int key = cart.products.keys.elementAt(index);
                    return CartProductItemPortrait(
                      cartProduct: cart.products[key]!,
                      onPress: onRemove,
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'الاجمالى ',
                        style: TextStyle(
                            color: blackColor
                        ),
                      ),
                      Text(
                        '${cart.total} ريال ',
                        style: const TextStyle(
                            color: lightGreenColor
                        ),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => onPress(),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(greenColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.only(left: 20, right: 20)
                      )
                    ),
                    child: const Text(
                      'شراء',
                      style: TextStyle(
                        color: whiteColor
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ) : Container();
  }
}

import 'package:flutter/material.dart';
import 'package:maqsfy/data/model/cart.dart';
import 'package:maqsfy/data/model/customer.dart';
import 'package:maqsfy/resources/app_color.dart';
import 'package:maqsfy/view/widgets/cart_product_item_landscape.dart';
import 'package:maqsfy/view/widgets/customer_card_landscape.dart';

class CartCardLandscape extends StatelessWidget{
  final Cart cart;
  final Function onPress;
  final Function onRemove;

  const CartCardLandscape({Key? key, required this.cart, required this.onPress,
    required this.onRemove}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return cart.products.isNotEmpty ? Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: CustomerCardLandscape(
            customer: Customer(135, 'محمد بن عبد الله الفلاج',
                'assets/images/kid.png', 10.000, 15.00),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: cart.products.length,
              itemBuilder: (context, index) {
                int key = cart.products.keys.elementAt(index);
                return Container(
                  color: veryLightGreenColor,
                  child: CartProductItemLandScape(
                    cartProduct: cart.products[key]!,
                    onPress: onRemove,
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          color: veryLightGreenColor,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'الملاحظات',
                    style: TextStyle(
                        color: lightGreenColor,
                        fontSize: 25
                    ),
                  ),
                  Text(
                    'يفضل تاريخ صلاحية حديث ',
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 25
                    ),
                  )
                ],
              ),
              Container(
                color: lightGreenColor,
                height: 1,
                margin: const EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'عمولة التطبيق ',
                    style: TextStyle(
                        color: lightGreenColor,
                        fontSize: 25
                    ),
                  ),
                  Text(
                    '2.50 ريال ',
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 25
                    ),
                  )
                ],
              ),
              Container(
                color: lightGreenColor,
                height: 1,
                margin: const EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'المجموع ',
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 30
                    ),
                  ),
                  Text(
                    '${cart.total} ريال ',
                    style: const TextStyle(
                      color: blackColor,
                      fontSize: 30
                    ),
                  )
                ],
              ),
              Container(
                height: 1,
                margin: const EdgeInsets.all(5),
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
                        const EdgeInsets.fromLTRB(170, 30, 170, 30)
                    ),
                ),
                child: const Text(
                  'شراء',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 30
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ) : Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.panorama_horizontal,
          color: lightGrayColor,
          size: 80,
        ),
        Text(
          'يجب عليك اختيار طالب اولا',
          style: TextStyle(
            color: lightGrayColor,
            fontSize: 20
          ),
        )
      ],
    );
  }
}

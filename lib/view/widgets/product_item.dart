import 'package:flutter/material.dart';
import 'package:maqsfy/data/model/product.dart';
import 'package:maqsfy/resources/app_color.dart';

class ProductItem extends StatelessWidget{

  final Product product;
  final Function onPress;

  const ProductItem({Key? key, required this.product, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.info_outline_rounded,
              color: veryLightGreenColor,
            ),
            Container(
              decoration: const BoxDecoration(
                color: veryLightGreenColor,
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'kcal ',
                    style: TextStyle(
                        fontSize: 10,
                        color: lightGreenColor
                    ),
                  ),
                  Text(
                    product.cal.toString(),
                    style: const TextStyle(
                      fontSize: 10,
                      color: lightGreenColor
                    ),
                  ),
                  const Icon(
                    Icons.directions_walk,
                    color: lightGreenColor,
                    size: 10,
                  )
                ],
              )
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 5),
          child: Image.asset(
            'assets/images/${product.image}.png',
            height: 115,
            width: 100,
          ),
        ),
        Text(product.title),
        Row(
          children: [
            const Text('  الكمية بالمخزون: '),
            Text(
              product.stock.toString(),
              style: const TextStyle(
                  color: lightGreenColor
              ),
            ),
          ],
        ),
        Row(
          children: [
            InkWell(
              onTap: () => onPress(product),
              child: const Icon(
                Icons.add_circle,
                color: lightGreenColor,
                size: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Text(
                '${product.price} ريال ',
                style: const TextStyle(
                    color: lightGreenColor
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

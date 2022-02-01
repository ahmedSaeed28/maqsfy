import 'package:flutter/material.dart';
import 'package:maqsfy/data/model/category.dart';
import 'package:maqsfy/data/model/product.dart';
import 'package:maqsfy/resources/app_color.dart';
import 'package:maqsfy/view/widgets/product_item.dart';

class CategoriesGrid extends StatelessWidget  {

  final List<Category> categories;
  final Function onPress;

  const CategoriesGrid({Key? key, required this.categories, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(5),
      shrinkWrap: true,
      itemCount: categories.length + 1,
      itemBuilder: (context, index) {
        if (index == 0){
          return Container(
            decoration: const BoxDecoration(
                color: lightGreenColor,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: const Text(
              'الكل',
              style: TextStyle(
                  color: whiteColor
              ),
            ),
          );
        } else {
          return Container(
            decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () => onPress(categories[index-1]),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: Image.asset(
                        'assets/images/${categories[index-1].image}.png'),
                  ),
                  Text(
                    categories[index-1].title,
                    style: const TextStyle(color: lightGreenColor),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:maqsfy/resources/app_color.dart';

class BottomTapBar extends StatelessWidget{

  const BottomTapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: whiteColor,
      selectedItemColor: lightGreenColor,
      unselectedItemColor: grayColor,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'الرئيسية',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note_outlined),
          label: 'المحفظة',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.article_outlined),
          label: 'المبيعات',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'طلبات مسبقة',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'المزيد',
        ),
      ],
    );
  }
}

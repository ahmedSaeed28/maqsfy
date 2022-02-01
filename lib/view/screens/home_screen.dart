import 'package:flutter/material.dart';
import 'package:maqsfy/resources/app_color.dart';
import 'package:maqsfy/view/screens/products_landscape.dart';
import 'package:maqsfy/view/screens/products_portrait.dart';
import 'package:maqsfy/view/widgets/bottom_tap_bar.dart';

class HomeScreen extends StatefulWidget{

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrayColor,
      bottomNavigationBar: const BottomTapBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth >= 650) {
            return const ProductsLandscape();
          } else{
            return const ProductsPortrait();
          }
        },
      ),
    );
  }
}

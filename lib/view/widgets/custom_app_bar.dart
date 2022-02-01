import 'package:flutter/material.dart';
import 'package:maqsfy/resources/app_color.dart';

class CustomAppBar extends StatelessWidget{

  final String title;
  final Widget? widget;
  final VoidCallback? onPress;

  const CustomAppBar({Key? key, this.title = '' , this.widget, this.onPress}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      height: AppBar().preferredSize.height*3.3,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            darkGreenColor,
            greenColor
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.0, 1.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    color: whiteColor
                  ),
                )
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(
                    Icons.notifications_none,
                    size: 30,
                    color: whiteColor,
                  ),
                  onPressed: onPress,
                ),
              )
            ],
          ),
          Container(
            height: 1,
            color: blueColor,
            margin: const EdgeInsets.only(top: 5, bottom: 10),
          ),
          widget ?? Container()
        ],
      ),
    );
  }

}

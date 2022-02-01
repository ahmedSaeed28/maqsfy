import 'package:flutter/material.dart';
import 'package:maqsfy/data/model/customer.dart';
import 'package:maqsfy/resources/app_color.dart';

class CustomerCardLandscape extends StatelessWidget{

  final Customer customer;

  const CustomerCardLandscape({Key? key, required this.customer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset(customer.image),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.home,
                    color: whiteColor,
                    size: 20
                  ),
                  const Text(
                    'رقم ',
                    style: TextStyle(
                        color: whiteColor
                    ),
                  ),
                  Text(
                    customer.id.toString(),
                    style: const TextStyle(
                        color: veryLightGreenColor
                    ),
                  )
                ],
              ),
              Text(
                customer.name,
                style: const TextStyle(
                    color: whiteColor
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.credit_card,
                    color: whiteColor,
                    size: 20
                  ),
                  const Text(
                    'الرصيد ',
                    style: TextStyle(
                        color: whiteColor
                    ),
                  ),
                  Text(
                    '${customer.balance.toString()} ريال ',
                    style: const TextStyle(
                        color: veryLightGreenColor
                    ),
                  ),
                  const Text(
                    'الحد اليومي ',
                    style: TextStyle(
                        color: whiteColor
                    ),
                  ),
                  Text(
                    '${customer.dailyLimit.toString()} ريال ',
                    style: const TextStyle(
                        color: veryLightGreenColor
                    ),
                  )
                ],
              )
            ],
          ),
          const Icon(
            Icons.close,
            color: whiteColor,
          )
        ],
      ),
    );
  }
}

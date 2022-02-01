import 'package:flutter/material.dart';
import 'package:maqsfy/resources/app_color.dart';

class HomeBar extends StatelessWidget{

  final TextEditingController searchController;
  final Function onSearchPress;
  final Function onFindPress;

  const HomeBar({Key? key, required this.searchController,
    required this.onSearchPress, required this.onFindPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 2,
          child: SizedBox(
            height: 60,
            child: TextField(
              controller: searchController,
              autofocus: false,
              textAlign: TextAlign.right,
              decoration: const InputDecoration(
                hintText: "اسم الطالب",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                filled: true,
                fillColor: whiteColor,
                hintStyle: TextStyle(
                  color: grayColor,

                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: grayColor
                )
              ),
              // onChanged: (query) => updateSearchQuery(query),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: _button(Icons.search, orangeColor, onFindPress)
        ),
        Flexible(
            flex: 1,
            child: _button(Icons.person, blueColor, onFindPress)
        ),
      ],
    );
  }

  Widget _button(IconData icon, Color color, Function onPress) => ConstrainedBox(
    constraints: const BoxConstraints.tightFor(height: 60),
    child: ElevatedButton(
      onPressed: () => onPress(),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
        ),
      ),
      child: Icon(
        icon,
        size: 40,
        color: whiteColor,
      ),
    ),
  );
}

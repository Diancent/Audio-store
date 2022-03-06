import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> catagories = ["Headphone", "Headband", "Earpads"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    // return Padding(
    // padding: const EdgeInsets.only(top: 34.5, left: 22, bottom: 516),
    // child: Text(
    //   catagories[index],
    //   style: const TextStyle(
    //     fontWeight: FontWeight.w600,
    //     color: Color.fromRGBO(127, 127, 127, 1),
    //   ),
    // ),
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        // primary: const Color.fromRGBO(10, 207, 131, 1),
        primary: selectedIndex == index
            ? const Color.fromRGBO(10, 207, 131, 1)
            : const Color.fromRGBO(246, 246, 246, 1),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),

        // textStyle: const TextStyle(
        //   fontWeight: FontWeight.bold,
        //   color: Colors.white,
        //   fontSize: 14,
        // ),
      ),
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Text(
        catagories[index],
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          // color: Color.fromRGBO(127, 127, 127, 1),
          color: selectedIndex == index
              ? const Color.fromRGBO(255, 255, 255, 1)
              : const Color.fromRGBO(127, 127, 127, 1),
        ),
      ),
      // ),
    );
  }
}

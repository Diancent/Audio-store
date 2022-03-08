import 'package:flutter/material.dart';

class CategoriesDetail extends StatefulWidget {
  const CategoriesDetail({Key? key}) : super(key: key);

  @override
  State<CategoriesDetail> createState() => _CategoriesDetailState();
}

class _CategoriesDetailState extends State<CategoriesDetail> {
  List<String> catagories = ["Overview", "Features", "Specification"];
  int selectedIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          catagories.length,
          (index) => Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shadowColor: Colors.transparent,

                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(30.0),
                    // ),

                    primary: Colors.transparent,
                    // primary: selectedIndex == index
                    //     ? const Color.fromRGBO(10, 207, 131, 1)
                    //     : const Color.fromRGBO(246, 246, 246, 1),
                    padding: const EdgeInsets.only(right: 34)

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
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 35),
                width: 24,
                height: 3,
                color: selectedIndex == index
                    ? const Color.fromRGBO(10, 207, 131, 1)
                    : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

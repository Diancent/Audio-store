import 'package:audiomain/screens/details/review/review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audiomain/model/product.dart';

import 'carousel.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List<String> catagories = ["Overview", "Features", "Specification"];
  int selectedIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            color: Colors.black,
            // icon: Icon(Icons.menu),
            icon: SvgPicture.asset(
              "assets/icons/shopping-cart.svg",
              width: 22,
            ),
            // icon: const Icon(Icons.shopping_cart_outlined),
            // icon: Image.asset("assets/images/avatar2jp.jpg"),
            onPressed: () {
              // Navigator.of(context).pop();
              // Navigator.pushNamed(context, route.setting);
            },
          ),
          const SizedBox(
            width: 14,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          children: [
            // Image.asset(product.image),
            const SizedBox(height: 18),
            Text(
              "USD ${widget.product.price}",
              style: const TextStyle(
                color: Color.fromRGBO(10, 207, 131, 1),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              // "TMA-2 \nHD WIRELESS",
              "${widget.product.title}\n${widget.product.title2}",
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
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
            ),
            const SizedBox(height: 29),
            const Carousel(),
            const SizedBox(height: 40),
            Review(),
          ],
        ),
      ),
    );
  }
}

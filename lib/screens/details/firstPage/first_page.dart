import 'package:flutter/material.dart';
import 'package:audiomain/widgets.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: const [
              Carousel(),
              SizedBox(height: 40),
              Review(),
              SizedBox(height: 20),
            ],
          ),
        ),
        Container(
            color: const Color.fromRGBO(246, 246, 246, 1),
            height: 319,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.only(left: 24),
              child: FeaturedProducts(title: "Another Product"),
            )),
        const SizedBox(height: 30),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(10, 207, 131, 1),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15)),
            onPressed: () {},
            child: const Text(
              "Add To Cart",
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

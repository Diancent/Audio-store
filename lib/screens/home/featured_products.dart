import 'package:audiomain/model/product.dart';
import 'package:audiomain/screens/details/details.dart';
import 'package:flutter/material.dart';
import 'package:audiomain/routs.dart' as route;

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({
    Key? key,
    required this.title,
    this.press,
  }) : super(key: key);

  final String title;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Row(
            children: [
              Container(
                height: 20,
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: press,
                child: const Text(
                  "See All",
                  style: TextStyle(
                    color: Color.fromRGBO(127, 127, 127, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              allProduct.length,
              (index) => FeaturedProductCard(
                image: allProduct[index].image,
                title: allProduct[index].title,
                price: allProduct[index].price,
                // press: () {
                //   Navigator.pushNamed(context, route.detail);
                // },
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Detail(product: allProduct[index]),
                      ));
                },
                indent: allProduct[index].indent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FeaturedProductCard extends StatelessWidget {
  const FeaturedProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    this.press,
    required this.indent,
  }) : super(key: key);

  final String image, title;
  final int price;
  final double indent;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(top: 10, right: 15),
        // width: size.width * 0.4,
        height: 213,
        width: 155,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(image),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, bottom: 15, top: indent),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "USD $price",
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

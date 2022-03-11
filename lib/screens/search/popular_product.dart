import 'package:audiomain/model/product.dart';
import 'package:audiomain/screens/details/details.dart';
import 'package:flutter/material.dart';
import 'package:audiomain/routs.dart' as route;

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      this.onTap})
      : super(key: key);
  final String image, title;
  final int price;
  final dynamic onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: 75,
              height: 75,
              // color: Color.fromRGBO(246, 246, 246, 1),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(246, 246, 246, 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Image.asset(image),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // "TMA-2 Comfort Wireless",
                  title,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "USD $price",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 13),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.amber,
                    ),
                    Text(
                      "4.6",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "86 Reviews",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 119),
                    Icon(
                      Icons.more_vert,
                      color: Color.fromRGBO(127, 127, 127, 1),
                      size: 20,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

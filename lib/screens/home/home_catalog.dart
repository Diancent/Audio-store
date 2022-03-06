import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'categories.dart';
import 'featured_products.dart';
import 'scroll_big_cards.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 569.0,
      height: 669.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Color.fromRGBO(246, 246, 246, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 34.5,
          left: 22,
        ),
        child: Column(
          children: [
            const Categories(),
            const ScrollBigCards(),
            FeaturedProducts(title: "Featured Products", press: () {}),
          ],
        ),
      ),
    );
  }
}

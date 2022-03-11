import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreProducts extends StatelessWidget {
  const ExploreProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            const SizedBox(width: 8),
            IconButton(
              color: Colors.black,
              icon: const Icon(CupertinoIcons.chevron_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
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
            onPressed: () {},
          ),
          const SizedBox(
            width: 14,
          ),
        ],
      ),
    );
  }
}

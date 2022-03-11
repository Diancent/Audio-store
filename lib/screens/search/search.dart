// import 'package:audiomain/model/product.dart';
import 'package:audiomain/model/product_for_search.dart';
import 'package:audiomain/screens/search/popular_product.dart';
import 'package:audiomain/widgets/search_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:audiomain/routs.dart' as route;

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Product> products = allProduct;
  // late List<Product> products;
  String query = '';
  // @override
  // void initState() {
  //   super.initState();

  //   products = allProducts;
  // }

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
        title: const Text(
          "Search",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
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
              Navigator.pushNamed(context, route.exploreProducts);
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
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(height: 15),
            SearchForm(
              onChanged: searchProduct,
              press: () {},
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Lastest search",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            lastest_search("TMA 2 Wireless"),
            lastest_search("Cable"),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular product",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              height: 600,
              child: ListView.builder(
                // controller: _controller,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    image: product.image,
                    title: product.title,
                    price: product.price,
                    onTap: () {},
                  );
                  // return ListTile(
                  //     leading: Image.asset(product.image),
                  //     title: Text(
                  //       product.title,
                  //     ));
                },
              ),
            ),

            // const PopularProduct(),
            // const PopularProduct(),
            // const PopularProduct(),
            // ListView.builder(
            //     itemCount: products.length,
            //     itemBuilder: (context, index) {
            //       final product = products[index];

            //       return buildProduct(product);
            //     })
          ],
        ),
      ),
    );
  }

  void searchProduct(String query) {
    final suggestions = allProduct.where((product) {
      final productTitle = product.title.toLowerCase();
      final input = query.toLowerCase();

      return productTitle.contains(input);
    }).toList();

    setState(() => products = suggestions);
  }

  GestureDetector lastest_search(String title) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/clock.svg",
              width: 18,
              height: 18,
              color: const Color.fromRGBO(186, 186, 186, 1),
            ),
            const SizedBox(width: 11),
            SizedBox(
              width: 294,
              child: Text(title),
            ),
            const Icon(
              Icons.close,
              size: 19,
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }

  // ListTile buildProduct(Product product) => ListTile(
  //       leading: Image.asset(
  //         product.image,
  //         width: 50,
  //         height: 50,
  //       ),
  //       title: Text(product.title),
  //       subtitle: Text(product.price),
  //     );
}

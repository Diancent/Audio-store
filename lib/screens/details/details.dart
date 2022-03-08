import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:audiomain/widgets.dart';
import 'package:audiomain/model/product.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> with SingleTickerProviderStateMixin {
  // List<String> catagories = ["Overview", "Features", "Specification"];
  // int selectedIndex = 0;
  // int index = 0;

  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 3, vsync: this);
    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
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
      body: Container(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "USD ${widget.product.price}",
                style: const TextStyle(
                  color: Color.fromRGBO(10, 207, 131, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                // "TMA-2 \nHD WIRELESS",
                "${widget.product.title}\n${widget.product.title2}",
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 29),
            DefaultTabController(
              length: 3, // length of tabs
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 9),
                    child: const TabBar(
                      isScrollable: true,
                      labelColor: Colors.black,
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      unselectedLabelColor:
                          Colors.black, // колір не активної вкладки
                      // labelPadding: EdgeInsets.only(left: 0),
                      // indicatorColor: Color.fromRGBO(10, 207, 131, 1),
                      // indicatorWeight: 3,
                      // indicatorSize: TabBarIndicatorSize.values, // ???
                      // нижнє підкреслювання
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 3.0,
                          color: Color.fromRGBO(10, 207, 131, 1),
                        ),
                        insets: EdgeInsets.symmetric(horizontal: 37.0),
                      ),
                      tabs: [
                        Tab(
                          height: 33,
                          text: "Overview",
                        ),
                        Tab(
                          height: 33,
                          text: "Features",
                        ),
                        Tab(
                          height: 33,
                          text: "Specification",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 13304, //height of TabBarView
                    // decoration: BoxDecoration(
                    //     border: Border(
                    //         top: BorderSide(color: Colors.grey, width: 0.5))),
                    child: TabBarView(
                      children: <Widget>[
                        const FirstPage(),
                        const SecondPage(),
                        Container(
                          child: const Text('Specification',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

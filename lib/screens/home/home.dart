import 'package:audiomain/widgets/search_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audiomain/routs.dart' as route;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audiomain/screens/home/home_catalog.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          children: [
            const SizedBox(width: 8),
            IconButton(
              // icon: Icon(Icons.menu),
              icon: SvgPicture.asset("assets/icons/menu-variant.svg"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        centerTitle: true,
        title: Row(
          children: [
            const SizedBox(
              width: 85,
            ),
            Image.asset("assets/images/Group1.jpg"),
            const Text(
              " Audio",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: (19),
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset("assets/images/avatar1.png"),
            onPressed: () {
              Navigator.pushNamed(context, route.setting);
            },
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 22.0, right: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hi, Andrea",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  "What are you looking for \ntoday?",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 25),
                // CupertinoSearchTextField(
                //   placeholder: "Search headphone",
                //   onTap: () {
                //     Navigator.pushNamed(context, route.search);
                //   },
                // ),
                SearchForm(
                  press: () {
                    Navigator.pushNamed(context, route.search);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const Catalog()
        ],
      ),
    );
  }
}

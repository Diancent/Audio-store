import 'package:flutter/material.dart';

class PopularProduct extends StatefulWidget {
  const PopularProduct({Key? key}) : super(key: key);

  @override
  _PopularProductState createState() => _PopularProductState();
}

class _PopularProductState extends State<PopularProduct> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
              child: Image.asset(
                "assets/images/image2.png",
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "TMA-2 Comfort Wireless",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "USD 270",
                  style: TextStyle(
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

import 'package:flutter/material.dart';

class ScrollBigCards extends StatelessWidget {
  const ScrollBigCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          BigCard(
              title: "TMA-2\nModular\nHeadphone",
              image: "assets/images/image2.png",
              label: "Shop now    "),
          BigCard(
              title: "TMA-2\nModular\nHeadphone",
              image: "assets/images/image2.png",
              label: "Shop now    "),
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
    required this.title,
    required this.image,
    required this.label,
  }) : super(key: key);
  final String title, image, label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 22.5, bottom: 8, right: 15),
      height: 178,
      width: 326,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 10,
            ),
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: 151,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 40),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          label,
                          style: const TextStyle(
                            color: Color.fromRGBO(10, 207, 131, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            // decorationThickness: 0.6,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color.fromRGBO(10, 207, 131, 1),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(image)
        ],
      ),
    );
  }
}

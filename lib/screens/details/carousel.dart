import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          CarouselCard(
            color: Color.fromRGBO(246, 246, 246, 1),
            image: "assets/images/image6.jpg",
            alignment: Alignment.center,
          ),
          CarouselCard(
            color: Colors.transparent,
            image: "assets/images/image8.jpg",
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    Key? key,
    required this.color,
    required this.image,
    required this.alignment,
  }) : super(key: key);

  final Color color;
  final String image;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 285,
      // alignment: Alignment.centerLeft,
      height: 391,

      child: Image.asset(image),
    );
  }
}

import 'package:flutter/material.dart';

class UserReview extends StatelessWidget {
  const UserReview({
    Key? key,
    required this.name,
    required this.text_review,
    required this.width,
  }) : super(key: key);
  final String name, text_review;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/avatar1.png"),
          const SizedBox(width: 13),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name),
                  SizedBox(width: width),
                  // Spacer(
                  //   flex: 4,
                  // ),
                  Text(
                    "1 Month ago",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(127, 127, 127, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  star(Icons.star, Colors.amber),
                  star(Icons.star, Colors.amber),
                  star(Icons.star, Colors.amber),
                  star(Icons.star, Colors.amber),
                  star(Icons.star_border, Colors.grey),
                ],
              ),
              SizedBox(height: 12),
              Text(text_review),
            ],
          ),
        ],
      ),
    );
  }

  Widget star(dynamic icon, dynamic color) {
    return Icon(
      icon,
      color: color,
      size: 18,
    );
  }
}

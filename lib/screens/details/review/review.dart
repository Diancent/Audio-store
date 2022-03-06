import 'package:flutter/material.dart';

import 'user_review.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Review (102)",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 29),
        UserReview(
          name: "Madelina",
          text_review:
              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna \naliqua.",
          width: 164,
        ),
        UserReview(
          name: "Irfan",
          text_review:
              "Duis aute irure dolor in reprehenderit in \nvoluptate velit esse cillum dolore eu \nfugiat nulla pariatur.",
          width: 194,
        ),
        UserReview(
          name: "Ravi Putra",
          text_review: "Excepteur sint occaecat cupidatat non \nproident",
          width: 157,
        ),
      ],
    );
  }
}

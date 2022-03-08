import 'package:flutter/material.dart';

import 'user_review.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Review (102)",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 29),
        UserReview(
          name: "Madelina",
          text_review:
              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna \naliqua.",
          width: 164,
          first_star: golden_star(),
          second_star: golden_star(),
          third_star: golden_star(),
          fourth_star: golden_star(),
          fifth_star: grey_star(),
        ),
        UserReview(
          name: "Irfan",
          text_review:
              "Duis aute irure dolor in reprehenderit in \nvoluptate velit esse cillum dolore eu \nfugiat nulla pariatur.",
          width: 194,
          first_star: golden_star(),
          second_star: golden_star(),
          third_star: golden_star(),
          fourth_star: golden_star(),
          fifth_star: golden_star(),
        ),
        UserReview(
          name: "Ravi Putra",
          text_review: "Excepteur sint occaecat cupidatat non \nproident",
          width: 157,
          first_star: golden_star(),
          second_star: golden_star(),
          third_star: golden_star(),
          fourth_star: golden_star(),
          fifth_star: golden_star(),
        ),
        const SizedBox(height: 20),
        Center(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "See All Reviews",
              style: TextStyle(
                color: Color.fromRGBO(127, 127, 127, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Icon golden_star() {
    return const Icon(
      Icons.star,
      color: Colors.amber,
      size: 18,
    );
  }

  Icon grey_star() {
    return const Icon(
      Icons.star_border,
      color: Colors.grey,
      size: 18,
    );
  }
}

class Product {
  final String image, title;
  final int price;
  // final double indent;
  // final Function()? press;

  const Product({
    // required this.indent,
    required this.title,
    required this.price,
    required this.image,
  });
}

const allProduct = [
  Product(
    image: "assets/images/image2.png",
    title: "TMA-2 Comfort Wireless",
    price: 270,
    // indent: 0,
  ),
  Product(
    image: "assets/images/image2.png",
    title: "TMA-2",
    price: 270,
    // indent: 10,
  ),
  Product(
    image: "assets/images/image2.png",
    title: "TMA-2 Move Wireless",
    price: 270,
    // indent: 0,
  ),
];

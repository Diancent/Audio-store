import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchForm extends StatelessWidget {
  final Function()? press;
  const SearchForm({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        width: 380,
        height: 45,
        child: TextFormField(
          onTap: press,
          decoration: InputDecoration(
            hintText: "Search headphone",
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                  top: 11.0, left: 13, bottom: 13, right: 10),
              child: SvgPicture.asset(
                "assets/icons/search.svg",
                color: const Color.fromRGBO(186, 186, 186, 1),
                // width: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    color: Colors.grey,
  ),
);

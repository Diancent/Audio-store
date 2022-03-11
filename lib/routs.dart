import 'package:audiomain/model/product.dart';
import 'package:audiomain/screens/details/details.dart';
import 'package:audiomain/screens/exploreProducts/explore_products.dart';
import 'package:flutter/material.dart';

import 'package:audiomain/screens/signIn/sign_in.dart';
import 'package:audiomain/screens/signUp/sign_up.dart';
import 'package:audiomain/screens/home/home.dart';
import 'package:audiomain/screens/search/search.dart';
import 'package:audiomain/screens/settings/settings.dart';

// Route Names
const String signIn = 'signIn';
const String signUp = 'signUp';
const String home = 'home';
const String setting = 'setting';
const String search = 'search';
const String detail = 'detail';
const String exploreProducts = 'exploreProducts';

// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case signIn:
      return MaterialPageRoute(builder: (context) => const SignIn());
    case signUp:
      return MaterialPageRoute(builder: (context) => const SignUp());
    case home:
      return MaterialPageRoute(builder: (context) => const Home());
    case setting:
      return MaterialPageRoute(builder: (context) => const Settings());
    case search:
      return MaterialPageRoute(builder: (context) => const Search());
    // case detail:
    //   return MaterialPageRoute(builder: (context) => const Detail());
    case exploreProducts:
      return MaterialPageRoute(builder: (context) => const ExploreProducts());
    default:
      throw ('This route name does not exist');
  }
}

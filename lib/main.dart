import 'package:flutter/material.dart';

import 'package:audiomain/theme.dart';
import 'routs.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio store',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: const SignIn(),
      onGenerateRoute: route.controller,
      initialRoute: route.signIn,
    );
  }
}

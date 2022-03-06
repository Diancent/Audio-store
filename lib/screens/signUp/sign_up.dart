import 'package:flutter/material.dart';
import 'package:audiomain/screens/signUp/sign_up_form.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/imageBackground.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: const [
              // SizedBox()
              SizedBox(height: 114),
              Center(
                child: Text(
                  'Audio',
                  style: TextStyle(
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 7),
              Text(
                'It`s modular and designed to last',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 129,
              ),
              SafeArea(
                left: true,
                right: true,
                child: SignUpForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

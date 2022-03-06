import 'package:audiomain/constants.dart';
import 'package:flutter/material.dart';
import 'package:audiomain/routs.dart' as route;
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String email = '';
  String password = '';
  String error = '';
  bool remember = false;

  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          const SizedBox(height: 20),
          buildPasswordFormField(),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              primary: const Color.fromRGBO(10, 207, 131, 1),
              padding:
                  const EdgeInsets.symmetric(horizontal: 137, vertical: 15),
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, route.home);
            },
            child: const Text(
              'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              const Text(
                'Didn`t have any account?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, route.signUp);
                },
                child: const Text(
                  'Sign Up here',
                  style: TextStyle(
                    color: Color.fromRGBO(10, 207, 131, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationThickness: 0.6,
                  ),
                ),
              ),
              // GestureDetector(
              //   onTap: () {},
              //   child: const Text(
              //     'Sign Up here',
              //     style: TextStyle(
              //       color: Color.fromRGBO(10, 207, 131, 1),
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold,
              //       decoration: TextDecoration.underline,
              //       decorationThickness: 0.6,
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      // textAlign: TextAlign.left,
      controller: passwordController,
      obscureText: true,
      // style: const TextStyle(
      //   color: Colors.white,
      // ),
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        // return null;
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        // labelText: AppLocalizations.of(context).translate('password'),

        // hintText: AppLocalizations.of(context).translate('password_hint'),
        prefixIcon: Icon(Icons.lock_outline),
        labelText: 'Password',
        alignLabelWithHint: true,
        labelStyle: TextStyle(
          // color: Color(0xFFEFEBE9),
          color: Colors.grey,
        ),
        hintStyle: TextStyle(
          // color: Color(0xFFEFEBE9),
          color: Colors.black,
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.never,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),

        filled: true,
        // fillColor: HexColor("#1c1917"),
        fillColor: Colors.white,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // style: const TextStyle(
      //   color: Colors.white,
      // ),
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        // return null;
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        // labelText: AppLocalizations.of(context).translate('email'),
        // hintText: AppLocalizations.of(context).translate('email_hint'),
        prefixIcon: Icon(Icons.email_outlined),
        labelText: 'Email',
        alignLabelWithHint: true,
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),

        filled: true,
        fillColor: Colors.white,
        // fillColor: HexColor("#1c1917"),
      ),
    );
  }
}

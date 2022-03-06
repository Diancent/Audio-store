import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audiomain/routs.dart' as route;

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
          // TextButton(
          //   onPressed: () {},
          //   child: const Text(
          //     'Forgot Password',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 14,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
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
                  const EdgeInsets.symmetric(horizontal: 133, vertical: 15),
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
              'Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 42),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocalIcon(
                iconSrc: "assets/icons/appleLogo.svg",
                press: () {},
              ),
              SocalIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocalIcon(
                iconSrc: "assets/icons/google.svg",
                press: () {},
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              const Text(
                'If you have an account?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, route.signIn);
                },
                child: const Text(
                  'Sign In here',
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
      style: const TextStyle(
        color: Colors.white,
      ),
      // onSaved: (newValue) => password = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPassNullError);
      //   } else if (value.length >= 8) {
      //     removeError(error: kShortPassError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kPassNullError);
      //     return "";
      //   } else if (value.length < 8) {
      //     addError(error: kShortPassError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: const InputDecoration(
        // labelText: AppLocalizations.of(context).translate('password'),

        // hintText: AppLocalizations.of(context).translate('password_hint'),
        prefixIcon: Icon(Icons.lock_outline),
        // prefixIcon: SvgPicture.asset(
        //   "assets/icons/lock.svg",
        //   height: 23,
        //   width: 20,
        // ),
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
      style: const TextStyle(
        color: Colors.white,
      ),
      // onSaved: (newValue) => email = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kEmailNullError);
      //   } else if (emailValidatorRegExp.hasMatch(value)) {
      //     removeError(error: kInvalidEmailError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kEmailNullError);
      //     return "";
      //   } else if (!emailValidatorRegExp.hasMatch(value)) {
      //     addError(error: kInvalidEmailError);
      //     return "";
      //   }
      //   return null;
      // },
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

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function()? press;
  const SocalIcon({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(12),
        height: 52,
        width: 52,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 10,
          width: 10,
        ),
      ),
    );
  }
}

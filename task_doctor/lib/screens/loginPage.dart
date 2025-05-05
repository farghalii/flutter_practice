import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login page';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: '@gmail.com',
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your Email';
                      } else if (!value.endsWith('@gmail.com') ||
                          value == '@gmail.com') {
                        return 'Invalid Email';
                      }
                    },
                  ),
                ),
                TextFormField(
                  obscureText: obscureText,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          obscureText = !obscureText;
                          setState(() {});
                        },
                        icon: obscureText
                            ? Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              )
                            : Icon(
                                Icons.visibility,
                                color: Colors.black,
                              )),
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your password';
                    } else if (value.length < 8) {
                      return 'password must be at least 8 characters';
                    }
                  },
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(double.infinity, size.height * .05),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/home page');
                    }
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

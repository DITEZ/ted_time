import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  bool _obscureText = true;

  Future signup() async {
   String url = 'http://teddy.goodnewsmentalspace.com/users/signup.php';
   Uri uri = Uri.parse(url); // Converting the String to a Uri object 
  var response; // Declaring the response variable 
  response = await http.post(uri,body: {
  "username": username.text,
  "email": email.text,
  "Password": password.text,
  "confirmPassword": confirmPassword.text,
});
    var data = jsonDecode(response.body);
    if (data == "Error") {
      Fluttertoast.showToast(
        msg: "This account already exists!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else {
      Fluttertoast.showToast(
        msg: "Successful!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Color.fromARGB(255, 30, 2, 2),
        fontSize: 16.0,
      );
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child: Text(
                    "Get started with TedTime",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'CyberKomic',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child: Text(
                    "Create an account",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 159, 180, 191),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none),
                    hintText: "Username",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 159, 180, 191),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none),
                    hintText: "email",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: password,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 159, 180, 191),
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    hintText: "Password.",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: confirmPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 159, 180, 191),
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    hintText: "Confirm password.",
                  ),
                ),
                SizedBox(height: 20),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    signup();
                    Get.toNamed('/login');
                  },
                  color: Color(0xff0095FF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Or: ",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),
                Center(
                  child: SignInButton(
                    button: Button.Google,
                    width: 300,
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: SignInButton(
                    button: Button.Facebook,
                    width: 300,
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

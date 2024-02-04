import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tedtime_app/views/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  bool _obscureText = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/undraw_Time_management_re_tk5w.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 3,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome to TedTime  \u{1F44B} ",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'CyberKomic',
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "enter your username",
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                  fillColor: Color.fromARGB(255, 159, 180, 191),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "enter your password",
                  prefixIcon: Icon(Icons.password),
                  filled: true,
                  fillColor: Color.fromARGB(255, 159, 180, 191),
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
                ),
              ),
              SizedBox(height: 20),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {
                  Get.toNamed('/homescreen');
                },
                color: Color(0xff0095FF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account?",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 134, 69, 69)),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(
                          '/signup'); // uses getX to Redirect to signup page
                    },
                    child: Text(
                      "sign up",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

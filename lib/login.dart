import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:loginsignup1/signup.dart';

// ignore_for_file: prefer_const_constructors
class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * .3,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'img/loginimg.png',
              ),
              fit: BoxFit.cover,
            )),
          ),
          Container(
              width: w,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 70,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign into your account",
                    style: TextStyle(
                      color: Colors.pink[100],
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.pink,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.pink.shade100,
                            )),
                        icon: Icon(Icons.email, color: Colors.pink),
                        hintText: 'Enter Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.pink,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.pink.shade100,
                            )),
                        icon: Icon(Icons.password, color: Colors.pink),
                        hintText: 'Enter Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.pink.shade200,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 150),
                    child: Text(
                      "Did you Forget your password?",
                      style: TextStyle(
                        color: Colors.pink[100],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Container(
            width: w * 0.5,
            height: h * .06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(
                    'img/loginbtn.png',
                  ),
                  fit: BoxFit.cover,
                )),
            child: Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: h * 0.2),
          RichText(
              text: TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyle(
              color: Colors.pink.shade200,
              fontSize: 16,
            ),
            children: [
              TextSpan(
                  text: ' Create',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.to(() => signup());
                    }),
            ],
          ))
        ],
      ),
    );
  }
}

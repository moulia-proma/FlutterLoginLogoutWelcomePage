import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class signup extends StatefulWidget {
  const signup({super.key});
// ignore_for_file: prefer_const_constructors
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    List imag = [
      'img/g.png',
      'img/t.png',
      'img/f.png',
    ];
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
                'img/signup.png',
              ),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.14,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 60,
                  backgroundImage: AssetImage(
                    'img/profile1.png',
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: w,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                "Sign up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
            SizedBox(height: 15,),
            RichText(
            text: TextSpan(
              recognizer: TapGestureRecognizer()
              ..onTap=(){
                Get.back();
                
              },
              text: 'Already have an account?',
              style: TextStyle(
                color: Colors.pink.shade200,
                fontSize: 13,
              ),
            ),
          ),
          
          SizedBox(height: h * 0.2),
          RichText(
            text: TextSpan(
              text: 'Signup using one of the following method',
              style: TextStyle(
                color: Colors.pink.shade200,
                fontSize: 13,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Wrap(
              children: List<Widget>.generate(3, (index) {
            
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    imag[index],
                  ),
                ),
              ),
            );
          }))
        ],
      ),
    );
  }
}

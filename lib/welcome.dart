import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}
// ignore_for_file: prefer_const_constructors
class _welcomeState extends State<welcome> {
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
                    'img/profile.png',
                  ),
                ),
              ],
            ),
          ),
            SizedBox(height: 15,),
            Container(
            
              width: w,
              margin: const EdgeInsets.only(left:20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     Text(
                      'Welcome',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                     ),
                     SizedBox(height: 10,),
                       
                        Text(
                      'promaroy087@gmail.com',
                      style: TextStyle(
                        color: Colors.pink[200],
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                     )
              ],)
            ),



          SizedBox(
            height: 250,
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
                "Sign out",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
         
        
        ],
      ),
    );
  }
}
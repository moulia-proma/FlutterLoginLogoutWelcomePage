import 'package:flutter/material.dart';
import 'package:loginsignup1/login.dart';
import 'package:loginsignup1/signup.dart';
import 'package:loginsignup1/welcome.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const loginpage(),
    );
  }
}

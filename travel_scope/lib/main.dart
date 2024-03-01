// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_scope/Views/OTP_Screen.dart';
import 'package:travel_scope/Views/Register.dart';
import 'Views/Login.dart';
 import 'package:firebase_core/firebase_core.dart'; // 
 import 'firebase_options.dart'; 
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:Register(),
    );
  }
}

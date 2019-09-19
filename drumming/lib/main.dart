import 'package:drumming/pages/splash.dart';
import 'package:drumming/pages/student_register.dart';
import 'package:drumming/pages/students.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/student_list' : (context) => Students(),
        '/student_register' : (context) => StudentRegister()
      },
    );
  }
}

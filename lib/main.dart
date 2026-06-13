//compiler  main /entry
import 'package:flutter/material.dart';
import 'package:miniproject/pages/auth/login.dart';
import 'package:miniproject/pages/home/home.dart';
import 'package:miniproject/pages/splash.dart';

void main(){

runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
  debugShowCheckedModeBanner: false,
  home:HomePage()
);
  }
}

// MaterialApp  app level

// pages configure   custom widget

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:miniproject/pages/home/home.dart';
import 'package:miniproject/pages/auth/login.dart';
import 'package:miniproject/pages/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // 2 3  function
    Timer(Duration(seconds: 3), () async {
      //get instance
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      var isfirst = prefs.getBool("isfirst") ?? false; //null
      print('timer call : ${isfirst}');
      if (isfirst) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OnboardingScreen()),
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 178, 231, 179),
      body: Center(
        child: Icon(Icons.shopify_sharp, size: 80, color: Colors.green),
      ),
    );
  }
}


// build function splash home
//stf  initstate
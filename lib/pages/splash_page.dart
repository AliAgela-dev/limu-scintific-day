import 'dart:async';
import 'package:flutter/material.dart';
import 'package:limuscintificday/helper/function_helper.dart';
import 'package:limuscintificday/pages/onboarding_page.dart'; // Import the OnboardingPage

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/icons/logo.png'),
              width: getScreenSize(context).width * 0.8,
              height: getScreenSize(context).height * 0.9,
            ),
          ],
        ),
      ),
    );
  }
}
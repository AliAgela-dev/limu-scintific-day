import 'package:flutter/material.dart';
import 'package:limuscintificday/pages/onboarding_page.dart';
import 'package:limuscintificday/pages/splash_page.dart';
import 'package:limuscintificday/pages/start.dart';
import 'package:limuscintificday/pages/x_o_page.dart';
import 'package:limuscintificday/services/provider.dart';

void main() {
    setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(
        key: Key('start'),
      ),
    );
  }
}

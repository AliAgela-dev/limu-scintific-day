import 'package:flutter/material.dart';
import 'package:limuscintificday/pages/hang_man.dart';

import 'package:limuscintificday/services/provider.dart';

void main() {
    setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HangMan(),
    );
  }
}

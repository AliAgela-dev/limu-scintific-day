import 'package:flutter/material.dart';
import 'package:limuscintificday/helper/constant.dart';
import 'package:limuscintificday/widgets/game_options.dart';



class StartUpPage extends StatelessWidget {
  const StartUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      gameTitle,
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    ),
                    Icon(
                        Icons.gamepad_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
                GameOptions(),
              ]),
        ),
      ),
    );
  }
}

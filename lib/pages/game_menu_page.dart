import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:limuscintificday/helper/constant.dart';
import 'package:limuscintificday/helper/function_helper.dart';
import 'package:limuscintificday/pages/hang_man.dart';
import 'package:limuscintificday/pages/memory_match_page.dart';
import 'package:limuscintificday/pages/onboarding_page.dart';
import 'package:limuscintificday/pages/start.dart';
import 'package:limuscintificday/pages/startup_page.dart';
import 'package:limuscintificday/pages/x_o_page.dart';
import 'package:limuscintificday/widgets/main_button_widget.dart';

class GameMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/logo.png', 
              height: getScreenSize(context).height * 0.2,
            ),
            SizedBox(height: 20),
            Text(
              "Game Time  🎮",
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 60),
            Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color:blue2,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "choose your game",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 55),
                  SizedBox(
  width: getScreenSize(context).width * 0.8,
                    height: getScreenSize(context).height * 0.06,
                  child: Mainbutton(
                      text: "Tic Tac Toe",
                      textsize: 16,
                        ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StartPage(key: UniqueKey())),
                        );
                        },
                      backgroundColor: Colors.white,
                      textcolor: blue2,
                      icon: Image.asset("assets/icons/game-icons_tic-tac-toe.png",), ),
                    ),
                    
                  
                  SizedBox(height: 25),
                  SizedBox(
                    width: getScreenSize(context).width * 0.8,
                    height: getScreenSize(context).height * 0.06,

                    child: Mainbutton(
                      text: "memory card",
                      textsize: 16,
                        ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StartUpPage()),
                        );
                        },
                      backgroundColor: Colors.white,
                      textcolor:blue2,
                      icon: Image.asset("assets/icons/tabler_play-card-k-filled.png",),
                    ),
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                 width: getScreenSize(context).width * 0.8,
                    height: getScreenSize(context).height * 0.06,
                    child: Mainbutton(
                      text: "Hang Game",
                      textsize: 16,
                        ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HangMan()),
                        );
                        },
                      backgroundColor: Colors.white,
                      textcolor: blue2,
                    icon: Image.asset("assets/icons/Group.png"),),

                    ),
                  
                  SizedBox(height: 25),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnboardingPage()),
                      );
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}

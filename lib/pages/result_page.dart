import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:limuscintificday/helper/constant.dart';
import 'package:limuscintificday/helper/function_helper.dart';
import 'package:limuscintificday/pages/Onboarding_page.dart';
import 'package:limuscintificday/pages/game_menu_page.dart';
import 'package:limuscintificday/widgets/main_button_widget.dart';

class ResultScreen extends StatelessWidget {
 // final int score;
//  final int totalQuestions;

 // const ResultScreen({
  //  required this.score,
   // required this.totalQuestions,
  //});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue2,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WOW',
                 style: GoogleFonts.poppins(
                  fontSize: 69,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: getScreenSize(context).height * 0.03),
              Image.asset(
                'assets/icons/eyes.png',
               height: getScreenSize(context).height * 0.2,
              width: getScreenSize(context).width * 0.4,
              ),
              SizedBox(height: getScreenSize(context).height * 0.05),
              Text(
                'CONGRATS! YOUR SCORE',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
             //   '$score/$totalQuestions',
              "${correctAnswers}/${questions.length }",
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'You are a real expert in mobile development! Maybe you should\n build your own app',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: getScreenSize(context).height * 0.07),
              SizedBox(
                width: double.infinity,
                child: Mainbutton(text: "Next",
                backgroundColor: Colors.white,
                textcolor: blue2,
                  ontap: (){
                  correctAnswers = 0;
                  questionNumber = 0;
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => GameMenuScreen()));
                  }
                )
              

                ),
              
            ],
          ),
        ),
      ),
    );
  }
}



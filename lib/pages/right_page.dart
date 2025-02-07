import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:limuscintificday/helper/constant.dart';
import 'package:limuscintificday/helper/function_helper.dart';
import 'package:limuscintificday/pages/quiz_page.dart';
import 'package:limuscintificday/pages/result_page.dart';
import 'package:limuscintificday/widgets/main_button_widget.dart';

class RightPage extends StatelessWidget {
  const RightPage({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    player.play(AssetSource('audio/correct.mp3'));
    return  Scaffold(
      backgroundColor: green,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/icons/right.png'),
                width: getScreenSize(context).width * 0.5,
                height: getScreenSize(context).height * 0.3,
              ),
              Text(
                'Great job! You  \n   got it right!',
                style: GoogleFonts.poppins(
                  
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: getScreenSize(context).height * 0.2),
            SizedBox(
              width: double.infinity,
              child: Mainbutton(
                text: 'Next',
                textsize: 20,
                paddingbutten: const EdgeInsets.symmetric(vertical: 8.0),
                ontap: () {
                  correctAnswers++;
                  if (questionNumber==questions.length-1) 
                  {Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ResultScreen()),
                  );}
                  else{
                    questionNumber++;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => QuizScreen(onScreenQuestionIndex:questionNumber ,)),
                      );
                  }
                },
                textcolor: green,
                backgroundColor: Colors.white,
                ),
            )
            ],
          ),
        ),
      ),
      
    );
  }
}
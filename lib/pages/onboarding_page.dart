import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:limuscintificday/helper/constant.dart';
import 'package:limuscintificday/helper/function_helper.dart';
import 'package:limuscintificday/pages/quiz_page.dart';
import 'package:limuscintificday/widgets/main_button_widget.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/logo.png',
                   height: getScreenSize(context).height * 0.32,
                   width: getScreenSize(context).width * 0.65,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: getScreenSize(context).width * 0.09),
                    Text(
                      'Quiz',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: getScreenSize(context).width * 0.02),
                    Image.asset(
                      'assets/icons/cup.png',
                      height: getScreenSize(context).height * 0.1,
                      width: getScreenSize(context).height * 0.1,
                    ),
                  ],
                ),
                 SizedBox(height: getScreenSize(context).height * 0.02),
              ],
            ),
          ),
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
              
                
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: getScreenSize(context).height * 0.065),
                  Text(
                    'Test Your Knowledge on Mobile Development Evolution!',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                   SizedBox(height:getScreenSize(context).height * 0.05),
                  Text(
                    'Flutter revolutionized mobile development by enabling a single codebase for multiple platforms.',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                   SizedBox(height:getScreenSize(context).height * 0.07),
                Mainbutton(
                  text: 'Get Started',
                  textsize: 16,
                  backgroundColor: Colors.white,
                  textcolor: blue2,
                  paddingbutten: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 15,
                  ),
                  ontap: () {
                    questions.shuffle();
                    correctAnswers = 0;
                    questionNumber = 0;

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuizScreen(onScreenQuestionIndex: questionNumber,)),
                    );
                  },
                ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
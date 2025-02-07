import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:limuscintificday/helper/constant.dart';
import 'package:limuscintificday/helper/function_helper.dart';
import 'package:limuscintificday/models/question.dart';
import 'package:limuscintificday/pages/right_page.dart';
import 'package:limuscintificday/pages/wrong_page.dart';
import 'package:limuscintificday/widgets/choice_tile_page.dart';
import 'package:limuscintificday/widgets/main_button_widget.dart';


class QuizScreen extends StatefulWidget {
  QuizScreen({Key? key , required this.onScreenQuestionIndex}) : super(key: key);
  int onScreenQuestionIndex ;
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int selectedChoice = -1 ; 
  late Question currentQuestion ;
  @override
  Widget build(BuildContext context) {
    currentQuestion = questions[widget.onScreenQuestionIndex];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        title: Text('Quiz Time',
          style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                      ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              value: (widget.onScreenQuestionIndex+1) / 5,
              backgroundColor: blue4,
              minHeight: 17 ,
              color:blue2,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),

            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '${widget.onScreenQuestionIndex+1}/',
                  style: TextStyle(color: blue2, fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),
                ),
                Text(
                  questions.length.toString(),
                  style: TextStyle(color: blue4, fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),

                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              currentQuestion.question,
              style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                      ),
            ),
            SizedBox(height: getScreenSize(context).height * 0.07),
            ...List.generate(

              questions[widget.onScreenQuestionIndex].options.length,
              (index) => ChoiceTile(
                text: currentQuestion.options[index],
                isSelected: selectedChoice == index,
                onTap: () => setState(() {
                  selectedChoice = index;
                }),
              ),
            ),
            SizedBox( height: getScreenSize(context).height*0.1,),
            SizedBox(
              width: double.infinity,
              child: Mainbutton(
              text: 'Next',
                ontap: () {
                if (currentQuestion.options[selectedChoice] == currentQuestion.answer) {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RightPage()),
                  );
                } else {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => WrongPage()),
                  );
                }
                },
              backgroundColor: blue2,
              textcolor: Colors.white,
              paddingbutten: EdgeInsets.symmetric(vertical: 16.0),
              textsize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
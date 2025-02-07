import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:limuscintificday/helper/constant.dart';
import 'package:limuscintificday/helper/function_helper.dart';
import 'package:limuscintificday/pages/right_page.dart';
import 'package:limuscintificday/pages/wrong_page.dart';
import 'package:limuscintificday/widgets/choice_tile_page.dart';
import 'package:limuscintificday/widgets/main_button_widget.dart';


class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<String> choices = ['2015', '2017', '2010', '2020'];
  int? selectedChoice;

  @override
  Widget build(BuildContext context) {
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
              value: 1 / 5,
              backgroundColor: blue4,
              minHeight: 17 ,
              color:blue2,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),

            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '1/',
                  style: TextStyle(color: blue2, fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),
                ),
                Text(
                  '5',
                  style: TextStyle(color: blue4, fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),

                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              'When was Flutter introduced by Google?',
              style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                      ),
            ),
            SizedBox(height: getScreenSize(context).height * 0.07),
            ...List.generate(

              choices.length,
              (index) => ChoiceTile(
                text: choices[index],
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
                if (selectedChoice == 1) {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RightPage()),
                  );
                } else {
                  Navigator.push(
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
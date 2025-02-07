import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:limuscintificday/helper/constant.dart';
import 'package:limuscintificday/helper/function_helper.dart';
import 'package:limuscintificday/pages/result_page.dart';
import 'package:limuscintificday/widgets/main_button_widget.dart';

class WrongPage extends StatelessWidget {
  const WrongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   backgroundColor: red,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/icons/X.png'),
                width: getScreenSize(context).width * 0.5,
                height: getScreenSize(context).height * 0.3,
              ),
              Text(
                'Wrong answer, but\n      donot give up',
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
                 MaterialPageRoute(builder: (context) => ResultScreen());

                },
                textcolor: red,
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
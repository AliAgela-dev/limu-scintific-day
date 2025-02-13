import 'package:flutter/material.dart';
import 'package:limuscintificday/helper/constant.dart';
import 'package:limuscintificday/models/hang_game.dart';
import 'package:limuscintificday/widgets/figure_image.dart';
import 'package:limuscintificday/widgets/letter.dart';

class HangMan extends StatefulWidget {
  const HangMan({Key? key}) : super(key: key);

  @override
  _HangManState createState() => _HangManState();
}

class _HangManState extends State<HangMan> {
  //choosing the game word

  String word = (words..shuffle()).first.toUpperCase();
  //Create a list that contains the Alphabet, or you can just copy and paste it
  List<String> alphabets = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(203, 0, 0, 1),
      appBar: AppBar(
        title: Text("Hangman"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                //let's make the figure widget
                //let's add the images to the asset folder
                //Okey now we will create a Game class
                //Now the figure will be built according to the number of tries
                figureImage(HangGame.tries >= 0, "assets/hang.png"),
                figureImage(HangGame.tries >= 1, "assets/head.png"),
                figureImage(HangGame.tries >= 2, "assets/body.png"),
                figureImage(HangGame.tries >= 3, "assets/ra.png"),
                figureImage(HangGame.tries >= 4, "assets/la.png"),
                figureImage(HangGame.tries >= 5, "assets/rl.png"),
                figureImage(HangGame.tries >= 6, "assets/ll.png"),
              ],
            ),
          ),

          //Now we will build the Hidden word widget
          //now let's go back to the Game class and add
          // a new variable to store the selected character
          /* and check if it's on the word */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: word
                .split('')
                .map((e) => letter(e.toUpperCase(),
                    !HangGame.selectedChar.contains(e.toUpperCase())))
                .toList(),
          ),

          //Now let's build the Game keyboard
          SizedBox(
            width: double.infinity,
            height: 250.0,
            child: GridView.count(
              crossAxisCount: 7,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              padding: EdgeInsets.all(8.0),
              children: alphabets.map((e) {
                return RawMaterialButton(
                  onPressed: HangGame.selectedChar.contains(e)
                      ? null // we first check that we didn't selected the button before
                      : () {
                          setState(() {
                            HangGame.selectedChar.add(e);
                            print(HangGame.selectedChar);
                            if (!word.split('').contains(e.toUpperCase())) {
                              HangGame.tries++;
                            }
                            if (HangGame.tries == 6) {
                              showDialog(
                                  context: context,
                                  builder: (builder) {
                                    return AlertDialog(
                                      title: const Text("Game Over"),
                                      content: const Text("You lost the game"),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              setState(() {
                                                HangGame.selectedChar.clear();
                                                HangGame.tries = 0;
                                                word = (words..shuffle())
                                                    .first
                                                    .toUpperCase();
                                              });
                                            },
                                            child: const Text("Play Again"))
                                      ],
                                    );
                                  });
                            }
                            if 
                            (!word.split('').any((element) =>
                                !HangGame.selectedChar.contains(element))) {
                              showDialog(context: context, builder: (builder){
                                return AlertDialog(
                                  title: const Text("Congratulations"),
                                  content: const Text("You won the game"),
                                  actions: [
                                    TextButton(onPressed: (){
                                      Navigator.pop(context);
                                      setState(() {
                                        HangGame.selectedChar.clear();
                                        HangGame.tries = 0;
                                        word = (words..shuffle())
                                                    .first
                                                    .toUpperCase();
                                      });
                                    }, child: Text("Play Again"))
                                  ],
                                );
                              });
                            }
                          });
                        },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    e,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fillColor: HangGame.selectedChar.contains(e)
                      ? Colors.black87
                      : Colors.blue,
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

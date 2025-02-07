import 'dart:ui';

import 'package:limuscintificday/models/question.dart';

const blue1 = Color(0xFF163172);
const blue2 = Color(0xff1E56A0);
const blue3 = Color(0xFF525CEB);
const blue4 = Color(0xFFD6E4F0);
const green = Color(0xFF208B3A);
const red = Color(0xFFCB0000);
//--------------------------------------------
final List<Question> questions = [
  Question(
    answer: '2017',
    question: 'When was Flutter introduced by Google?',
    options: ['2015', '2017', '2018', '2019'],
  ),
  Question(
    answer: '1.0.0',
    question: 'What is the latest version of Flutter?',
    options: ['1.0.0', '1.5.4', '2.0.0', '2.2.0'],
  ),
  Question(
    answer: 'Dart',
    question: 'What is the programming language used in Flutter?',
    options: ['Dart', 'Java', 'Kotlin', 'Swift'],
  ),
  Question(
    answer: 'Sky',
    question: 'What is the name of the first Flutter stable version?',
    options: ['Sky', 'Star', 'Sun', 'Moon'],
  ),
  Question(
    answer: 'Sky',
    question: 'What is the name of the first Flutter stable version?',
    options: ['Sky', 'Star', 'Sun', 'Moon'],
  ),
];

int questionNumber = 0 ;
int correctAnswers = 0;

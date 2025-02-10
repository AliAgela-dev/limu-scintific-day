import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:limuscintificday/models/question.dart';

const blue1 = Color(0xFF163172);
const blue2 = Color(0xff1E56A0);
const blue3 = Color(0xFF525CEB);
const blue4 = Color(0xFFD6E4F0);
const green = Color(0xFF208B3A);
const red = Color(0xFFCB0000);
const Color continueButtonColor = Color.fromRGBO(235, 32, 93, 1);
const Color restartButtonColor = Color.fromRGBO(243, 181, 45, 1);
const Color quitButtonColor = Color.fromRGBO(39, 162, 149, 1);

const List<Map<String, dynamic>> gameLevels = [
  {'title': '4 x 4', 'level': 4, 'color': Colors.amberAccent},
  {'title': '6 x 6', 'level': 6, 'color': Colors.blueAccent},
  {'title': '8 x 8', 'level': 8, 'color': Colors.cyanAccent},
];

const String gameTitle = 'MEMORY MATCH';

const List<IconData> cardIcons = <IconData>[
  Icons.celebration,
  Icons.directions_car_filled,
  Icons.directions_bike,
  Icons.house,
  Icons.local_shipping,
  Icons.fastfood,
  Icons.album_sharp,
  Icons.forest,
  Icons.anchor,
  Icons.ac_unit,
  Icons.android,
  Icons.favorite,
  Icons.light,
  Icons.agriculture_sharp,
  Icons.airplanemode_on,
  Icons.umbrella,
  Icons.alarm,
  Icons.directions_subway_rounded,
  Icons.person,
  Icons.light_mode_outlined,
  Icons.bedtime_sharp,
  Icons.all_inclusive,
  Icons.wine_bar,
  Icons.star,
  Icons.headset_rounded,
  Icons.apple_sharp,
  Icons.whatshot_outlined,
  Icons.delete,
  Icons.audiotrack_rounded,
  Icons.back_hand_sharp,
  Icons.visibility,
  Icons.traffic_rounded,
  Icons.beach_access_rounded,
  Icons.battery_charging_full_sharp,
  Icons.downhill_skiing_rounded,
  Icons.directions_boat_rounded,
  Icons.eco_sharp,
  Icons.restaurant,
  Icons.balance_sharp,
  Icons.shopping_cart_rounded,
  Icons.radar_sharp,
  Icons.sports_esports_rounded,
];

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
//--------------------------------------------
List<String>  words = [
  'mobile',
  'dart',
  'flutter',
  'android',
  'google',
  'LIMU',
  'science',
  'widget',
];

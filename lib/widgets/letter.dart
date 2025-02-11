import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:limuscintificday/helper/constant.dart';

Widget letter(String character, bool hidden) {
  return Container(
    height: 65,
    width: 50,
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(
        color: Colors.black,
        width: 1.0,
      ),
      
    ),
    child: Center(
      child: Visibility(
        visible: !hidden,
        child: Text(
          character,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
          ),
        ),
      ),
    ),
  );
}

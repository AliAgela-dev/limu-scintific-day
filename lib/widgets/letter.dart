import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:limuscintificday/helper/constant.dart';

Widget letter(String character, bool hidden) {
  return Container(
    height: 65,
    width: 50,
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: green,
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Center(
      child: Visibility(
        visible: !hidden,
        child: Text(
          character,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
          ),
        ),
      ),
    ),
  );
}

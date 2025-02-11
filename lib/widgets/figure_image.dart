import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:limuscintificday/helper/constant.dart';

Widget figureImage(bool visible, String path) {
  return Visibility(
    visible: visible,
    child: Container(
      width: 250,
      height: 250,

      child: Image.asset(path,color:blue4
      
      ,
      
      ),
    )
    );
}

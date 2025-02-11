import 'package:flutter/material.dart';
import 'package:limuscintificday/helper/constant.dart';

class Mainbutton extends StatelessWidget {
  Mainbutton({
    super.key,
    required this.text,
    this.textsize,
    this.paddingbutten = const EdgeInsets.symmetric(vertical: 10.0),
    required this.ontap,
    this.textcolor = Colors.white,
    this.backgroundColor,
    this.icon,
    BorderRadius? borderbutton,
  });

  final String text;
  final double? textsize;
  final EdgeInsetsGeometry paddingbutten;
  final Function ontap;
  final Color textcolor;
  final Color? backgroundColor;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ontap();
      },
      style: ElevatedButton.styleFrom(
        padding: paddingbutten,
        backgroundColor: backgroundColor ?? blue2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          Text(
            text,
            style: TextStyle(
              fontSize: textsize,
              color: textcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 24),
           if (icon != null) ...[
            icon!,
            
            SizedBox(width: 8),
          ],
        ],
      ),
    );
  }
}

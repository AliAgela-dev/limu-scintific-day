import 'package:flutter/material.dart';
import 'package:limuscintificday/helper/constant.dart';

class ChoiceTile extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const ChoiceTile({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ?blue4 : Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: isSelected ? blue2 : blue4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: isSelected ? blue2 : Colors.black,
              ),
            ),
            if (isSelected)
              Icon(
          Icons.check_circle,
          color: blue2,
              )
            else
              Icon(
          Icons.circle_outlined,
          color: Colors.black,
              ),
          ],
        ),
        ),
      );
    
  }
}

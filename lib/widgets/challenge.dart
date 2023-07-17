import 'package:flutter/material.dart';
import 'package:sunday/utils/colors.dart';
import 'package:sunday/utils/texts.dart';

class Challenge extends StatelessWidget {
  Challenge(
      {super.key,
      required this.color,
      required this.img,
      required this.tcolor,
      required this.title});
  String title;
  String img;
  Color color;
  Color tcolor;
  @override
  Widget build(BuildContext context) {
    
      return Container(
        margin: EdgeInsets.only(left: 10),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.bottomLeft,
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: color,
          image: DecorationImage(
            image: AssetImage('assets/images/$img.png'),
          ),
        ),
        child: TextC(
            title: title, color: tcolor, size: 14, weight: FontWeight.w500),
      );
    }
  }


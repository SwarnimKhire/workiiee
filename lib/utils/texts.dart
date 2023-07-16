import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextC extends StatelessWidget {
 const TextC(
      {super.key,
      required this.title,
      required this.color,
      required this.size,
      required this.weight});
 final String title;
  final Color color;
 final double size;
 final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.lato(
        textStyle: TextStyle(color: color, fontSize: size, fontWeight: weight),
      ),
    );
  }
}

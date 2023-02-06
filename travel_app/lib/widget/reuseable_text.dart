import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  const AppText(
      {super.key,
      required this.text,
      required this.size,
      required this.color,
      required this.fontWeight});

  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.ubuntu(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

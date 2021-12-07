import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pay_app/constants/colors.dart';

class TextRaleway extends StatelessWidget {
  const TextRaleway(
      {Key? key, required this.text, this.color, this.size=24, this.fontWeight=FontWeight.bold})
      : super(key: key);
  final String text;
  final Color? color;
  final double size;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.raleway(
        textStyle:
            TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
      ),
    );
  }
}

class TextSegoe extends StatelessWidget {
  const TextSegoe(
      {Key? key, required this.text, this.color, this.size=14, this.fontWeight=FontWeight.normal})
      : super(key: key);
  final String text;
  final Color? color;
  final double size;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: 'SegoeUI'),
    );
  }
}

class TextLato extends StatelessWidget {
  TextLato({Key? key,
      required this.text,
      this.size = 14,
      this.color = Colors.white,
      this.fontWeight = FontWeight.normal})
      : super(key: key);
  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
          textStyle: TextStyle(
            color: color,
            fontSize: size,
            fontWeight: fontWeight,
          ),
        ));
  }
}

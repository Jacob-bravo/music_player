// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nunito extends StatelessWidget {
  final String input;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? textOverflow;
  const Nunito({
    super.key,
    required this.input,
    required this.color,
    required this.size,
    required this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    final tS = MediaQuery.of(context).textScaler.scale(1);
    return Text(
      input,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverflow,
      style: GoogleFonts.nunito(
          fontSize: size / tS, color: color, fontWeight: fontWeight),
    );
  }
}

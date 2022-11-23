import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  //static function with parameter return type Widget
  static TextStyle textStyle(double size, Color? color, FontWeight weight) {
    return GoogleFonts.poppins(
      fontSize: size,
      color: color,
      fontWeight: weight,
    );
  }
}

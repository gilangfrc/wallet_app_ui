import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardMenu extends StatelessWidget {
  IconData icon;
  String text;
  VoidCallback? onPressed;

  CardMenu(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          padding: const EdgeInsets.all(3),
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 28,
          ),
          color: Colors.white,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

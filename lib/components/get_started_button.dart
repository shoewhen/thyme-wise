import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(122, 255, 255, 255),
            borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.walterTurncoat(
                  fontSize: 25, color: Color.fromARGB(255, 114, 166, 113)),
            ),
            SizedBox(width: 20),
            Icon(Icons.arrow_forward, color: Color.fromARGB(255, 114, 166, 113))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPlantButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const AddPlantButton({
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
          color: Color.fromARGB(121, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.all(7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.averiaLibre(
                fontSize: 10, color: Color.fromARGB(255, 0, 0, 0)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

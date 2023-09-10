import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const Notifications ({super.key, 
  required this.text,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent,
        borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(
              children: [
                const Icon(
                  Icons.notifications,
                  color: Colors.black
                ),

                const SizedBox(width: 20),

                Text(
                  text,
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 18,
                    color: Colors.black)
                  ),
              ],
            ),
            
            
            const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: 18,
            )
            

          ],
        ),
      ),
    );
  }
}
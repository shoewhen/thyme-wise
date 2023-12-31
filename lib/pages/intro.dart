import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thyme_wise/components/get_started_button.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Text(
              "THYME-WISE",
              style: GoogleFonts.ribeyeMarrow(
                fontSize: 45,
                color: Color.fromARGB(255, 114, 166, 113),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'lib/images/Logo.png',
            ),
            Text("A relaxing game and aid to become the best plant parent!",
              textAlign: TextAlign.center,
              style: GoogleFonts.gaegu(
                fontSize: 20,
                color: Color.fromARGB(255, 177, 202, 165),
              )
            ),
            const SizedBox(height: 40),
            MyButton(
              text: "Click to Continue",
              onTap: () {
                Navigator.pushNamed(context, '/homepage');
              }
            ),
          ]
        )
      )
    );
  }
}

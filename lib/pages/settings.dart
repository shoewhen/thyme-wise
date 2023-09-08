import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thyme_wise/pages/home.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            const SizedBox(height: 50),

            Align(
              alignment: Alignment.topLeft,
              child:Text(
                "Settings",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 30,
                  color: Colors.black
                )
              ),
            ),

            const SizedBox(height: 15),

            Align(
              alignment: Alignment.topLeft,
              child:
                IconButton(
                  padding: const EdgeInsets.all(0.0),
                  icon: Image.asset('lib/images/alola-vulpix.jpeg'),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  }
                ),
            ),
          ],
        ),
      )
    );
  }
}
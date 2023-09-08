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
          children: [

            const SizedBox(height: 50),

            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      padding: const EdgeInsets.all(0.0),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30),
                      iconSize: 50,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      }
                  ),
                ),
                
                Text(
                  "Settings",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 30,
                    color: Colors.black
                  )
                ),
              ],
            ),


            
          ],
        ),
      )
    );
  }
}
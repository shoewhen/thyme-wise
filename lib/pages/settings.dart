import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thyme_wise/components/notifications.dart';
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
            
            const SizedBox(height: 25),

            Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.all(0.0),
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 20,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Home()),
                          );
                        }
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Settings", 
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.black,
                      fontSize: 20
                    ),
                  )
                ),
              ],
            ),

            const SizedBox(height: 32),

            Notifications(
              text: "Notifications",
              onTap: () {
                Navigator.pushNamed(context, '/homepage');
              }
          ),

          ],
        ),
      ),
    );
  }
}
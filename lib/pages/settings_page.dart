import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:thyme_wise/pages/home_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 50,),

              Center(
                child: Text(
                  "Settings", 
                  style: GoogleFonts.dmSerifDisplay(
                  fontSize: 45,
                  color: Colors.black,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  padding: EdgeInsets.all(0.0),
                  icon: Image.asset('lib/images/shawnthesheepplaceholder.jpeg'),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  // Navigate to second route when tapped.
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:thyme_wise/pages/settings_page.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/plantbackgroundplaceholder.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
      
                SizedBox(height: 25,),
      
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        padding: EdgeInsets.all(0.0),
                        icon: Image.asset('lib/images/shawnthesheepplaceholder.jpeg'),
                        iconSize: 50,
                        
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SettingsPage()),
                          );
                        // Navigate to second route when tapped.
                        },
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thyme_wise/models/plant.dart';

class UserTile extends StatelessWidget {
  final Plant plant;
  final void Function()? onTap;
  const UserTile({
    super.key, 
    required this.plant, 
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              plant.imagePath,
              width: 340,
            ),
            Text(
              plant.name,
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 20,
                color: Colors.white
              )
            )
          ],
        ),
      ),
    );
  }
}
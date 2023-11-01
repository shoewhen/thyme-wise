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
            SizedBox(height: 180),
            Image.asset(
              plant.imagePath,
              width: 340,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(234, 255, 255, 255),
                borderRadius: BorderRadius.circular(35)
              ),
              padding: EdgeInsets.all(15),
              child: Text(
                plant.name,
                style: GoogleFonts.walterTurncoat(
                  fontSize: 20,
                  color: Color.fromRGBO(212, 156, 237, 1)
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
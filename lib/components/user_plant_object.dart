import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thyme_wise/models/plant.dart';

class UserPlants extends StatelessWidget {
  final Plant plant;
  final void Function()? onTap;
  const UserPlants({
    super.key, 
    required this.plant, 
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            // image
            Image.asset(
              plant.imagePath,
              width: 100,
            ),
    
            const SizedBox(width: 10),
    
            // text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plant.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 15),
                  ),
            
                  Text(
                    plant.scientificName,
                    style: GoogleFonts.averiaLibre(
                      fontStyle: FontStyle.italic,
                      fontSize: 10)
                  ),
            
                  // description
                  Text(
                    plant.description,
                    style: GoogleFonts.averiaLibre(fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
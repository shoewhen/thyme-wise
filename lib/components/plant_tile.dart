import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thyme_wise/models/plant.dart';

class PlantTile extends StatelessWidget {
  final Plant plant;
  final void Function()? onTap;
  const PlantTile({
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
          borderRadius: BorderRadius.circular(40)
        ),
        margin: EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            // image
            Image.asset(
              plant.imagePath,
              width: 125,
            ),
    
            const SizedBox(width: 10),
    
            // text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plant.name,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 20,
                      color: Color.fromRGBO(212, 156, 237, 1)
                    ),
                  ),
            
                  Text(
                    plant.scientificName,
                    style: GoogleFonts.averiaLibre(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      color: Color.fromARGB(255, 114, 166, 113)
                    )
                  ),
            
                  // description
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
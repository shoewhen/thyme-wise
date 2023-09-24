import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thyme_wise/models/plant.dart';

class PlantTile extends StatelessWidget {
  final Plant plant;
  const PlantTile({
    super.key,
    required this.plant,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20)
      ),
      margin: EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          // image
          Expanded(
            child: Image.asset(
              plant.imagePath,
              width: 75,
            ),
          ),

          const SizedBox(width: 20),

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
    );
  }
}
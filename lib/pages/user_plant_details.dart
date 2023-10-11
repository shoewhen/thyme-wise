import 'package:flutter/material.dart';
import 'package:thyme_wise/models/plant.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPlantDetails extends StatefulWidget {
  final Plant plant;
  const UserPlantDetails({super.key, required this.plant});

  @override
  State<UserPlantDetails> createState() => _UserPlantDetailsState();
}

class _UserPlantDetailsState extends State<UserPlantDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
            children: [
              Image.asset(
                widget.plant.imagePath,
                height: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.plant.name,
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.black, fontSize: 20),
              ),
              Text(
                widget.plant.scientificName,
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.black, fontSize: 14),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 16),
                  Text(
                    "Watering: " + widget.plant.watering,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.black, fontSize: 14
                    )
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 16),
                  Text(
                    "Growing Conditions: " + widget.plant.growingConditions,
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.black, fontSize: 14
                    )
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 16),
                  Text(
                    "Size: " + widget.plant.size,
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.black, fontSize: 14
                    )
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 16),
                  Text(
                    "Difficulty: " + widget.plant.difficulty,
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.black, fontSize: 14
                    )
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  widget.plant.description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSerifDisplay(),
                ),
              )
            ],
            )
          ),
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thyme_wise/components/add_plant_button.dart';
import 'package:thyme_wise/models/plant.dart';
import 'package:thyme_wise/models/plant_catalog.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantDetails extends StatefulWidget {
  final Plant plant;
  const PlantDetails({super.key, required this.plant});

  @override
  State<PlantDetails> createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  final int one = 1;

  void addToCollection() {
    final catalog = context.read<PlantCatalog>();
    catalog.addToCollection(widget.plant, one);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 201, 231, 187),
        content: const Text("Successfully added to your collection!",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.done,
                color: Colors.white,
              )
            )
          ],
      )
    );
  }

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  Image.asset(
                    widget.plant.imagePath,
                    height: 200,
                  ),
            
                  SizedBox(height: 20),
                  
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

                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Watering: ",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          )
                        ),
                        TextSpan(
                          text: widget.plant.watering,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 14
                          )
                        ),
                      ]
                    )
                  ),
            
                  
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Growing Conditions: ",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          )
                        ),
                        TextSpan(
                          text: widget.plant.growingConditions,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 14
                          )
                        ),
                      ]
                    )
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Size: ",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          )
                        ),
                        TextSpan(
                          text: widget.plant.size,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 14
                          )
                        ),
                      ]
                    )
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Difficulty: ",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          )
                        ),
                        TextSpan(
                          text: widget.plant.difficulty,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 14
                          )
                        ),
                      ]
                    )
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
              ),
            )
          ),
          Container(
            color: const Color.fromARGB(255, 201, 231, 187),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AddPlantButton(
                  text: "Add to your collection!",
                  onTap: addToCollection,
                )
              ],
            )
          )
        ],
      )
    );
  }
}

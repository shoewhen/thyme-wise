import 'package:flutter/material.dart';
import 'package:thyme_wise/components/plant_tile.dart';
import 'package:thyme_wise/models/plant.dart';
import 'package:thyme_wise/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPlant extends StatefulWidget {
  const AddPlant({super.key});
  
  @override
  State<AddPlant> createState() => _AddPlantState();
}

class _AddPlantState extends State<AddPlant> {

  // plant menu
  List plantMenu = [
    // aloe
    Plant(
      name: "Aloe", 
      description: "description",
      imagePath: "lib/images/alola-vulpix.jpeg"),

    // thyme
    Plant(
      name: "Thyme", 
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"),

    // coriander
    Plant(
      name: "Coriander", 
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"),

    // sage
    Plant(
      name: "Sage", 
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"),

    // mint

    // basil

    // spider plant 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Stack(alignment: AlignmentDirectional.centerStart, 
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
                            MaterialPageRoute(
                                builder: (context) => const Home()),
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
                    "New Plant",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSerifDisplay(
                        color: Colors.black, fontSize: 20),
                  )
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: Text(
                      "Ready to add your newest plant child?",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.averiaLibre(
                          color: Colors.black, fontSize: 14),
                    ),
                  )
                ),
              ],
            ),

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "Search here...",
                )
              )
            ),


            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: plantMenu.length,
                itemBuilder: (context, index) => PlantTile(
                  plant: plantMenu[index],
                ),
              )
            )
          ],
        )
      )
    );
  }
}

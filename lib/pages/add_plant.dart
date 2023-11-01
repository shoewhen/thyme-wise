import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thyme_wise/components/plant_tile.dart';
import 'package:thyme_wise/models/plant_catalog.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thyme_wise/pages/plant_details.dart';

class AddPlant extends StatefulWidget {
  const AddPlant({super.key});
  
  @override
  State<AddPlant> createState() => _AddPlantState();
}

class _AddPlantState extends State<AddPlant> {

  void navigateToPlantDetails(int index) {
    final catalog = context.read<PlantCatalog>();
    final plantMenu = catalog.plantMenu;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PlantDetails(
          plant: plantMenu[index],
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {

    final catalog = context.read<PlantCatalog>();
    final plantMenu = catalog.plantMenu;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 202, 165),
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
                        color: Colors.white,
                        iconSize: 20,
                        onPressed: () {
                          Navigator.pop(context);
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
                        color: Colors.white, fontSize: 20),
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
                          color: Colors.white, fontSize: 14),
                    ),
                  )
                ),
              ],
            ),

            const SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: plantMenu.length,
                itemBuilder: (context, index) => PlantTile(
                  plant: plantMenu[index],
                  onTap: () => navigateToPlantDetails(index)
                ),
              )
            )
          ],
        )
      )
    );
  }
}

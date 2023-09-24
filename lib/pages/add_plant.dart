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
    Plant(
      name: "African Violet", 
      scientificName: "Saintpaulia ionantha",
      description: "can this piece of long text please work help help help help help help", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Aloe", 
      scientificName: "Aloe vera",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Basil", 
      scientificName: "Ocimum basilicum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Bromeliad", 
      scientificName: "Bromeliaceae",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Burro's Tail", 
      scientificName: "Sedum morganianum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Cactus", 
      scientificName: "Cactaceae",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Coriander", 
      scientificName: "Coriandrum sativum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Croton", 
      scientificName: "Cordiaeum variegatum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Echeveria Succulent", 
      scientificName: "Echeveria",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "English Ivy", 
      scientificName: "Hedera helix",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Fiddle-leaf fig", 
      scientificName: "Ficus lyrata",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Inchplant", 
      scientificName: "Tradescantia zebrina ",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Jade Plant", 
      scientificName: "Crassula ovata",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Maidenhair fern", 
      scientificName: "Adiantum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Mint", 
      scientificName: "Mentha",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Money Tree", 
      scientificName: "Pachira aquatica",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Monstera", 
      scientificName: "Monstera deliciosa",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Moth Orchid ", 
      scientificName: "Phalaenopsis",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Peace Lily", 
      scientificName: "Spathiphyllum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Peperomia", 
      scientificName: "Peperomia obtusifolia",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Philodendron", 
      scientificName: "Philodendron hederaceum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Ponytail Palm", 
      scientificName: "Beaucarnea recurvata",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),

    Plant(
      name: "Pothos", 
      scientificName: "Epipremnum aureum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),
    
    Plant(
      name: "Rubber Plant", 
      scientificName: "Ficus elastica",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),    

    Plant(
      name: "Sage", 
      scientificName: "Salvia officinalis",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),    

    Plant(
      name: "Snake Plant", 
      scientificName: "Dracaena trifasciata",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),    

    Plant(
      name: "Spider Plant", 
      scientificName: "Chlorophytum comosum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),   

    Plant(
      name: "String of Pearls", 
      scientificName: "Curio Rowlyanus",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),    

    Plant(
      name: "Thyme", 
      scientificName: "Thymus vulgaris",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),   

    Plant(
      name: "Venus Fly Trap", 
      scientificName: "Dionaea muscipula",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg"
    ),    
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
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
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

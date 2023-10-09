import 'package:thyme_wise/models/plant.dart';
import 'package:flutter/material.dart';

class PlantCatalog extends ChangeNotifier {
  // plant menu
  final List<Plant> _plantMenu = [
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

  // user plants
  List<Plant> _userPlants = [];

  // getter methods
  List<Plant> get plantMenu => _plantMenu;
  List<Plant> get userPlants => _userPlants;

  // add to homepage
  void addToPage(Plant plantItem, int quantity)
  {
    for (int i = 0; i < quantity; i++)
    {
      _userPlants.add(plantItem);
    }
    notifyListeners();
  }

  // remove from homepage
  void removeFromCart(Plant plant)
  {
    _userPlants.remove(plant);
    notifyListeners();
  }
}
import 'package:thyme_wise/models/plant.dart';
import 'package:flutter/material.dart';

class PlantCatalog extends ChangeNotifier {
  // plant menu
  final List<Plant> _plantMenu = [
    Plant(
      name: "African Violet", 
      scientificName: "Saintpaulia ionantha",
      description: "can this piece of long text please work help help help help help help", 
      imagePath: "lib/images/alola-vulpix.jpeg", 
      watering: "Once a week", 
      growingConditions: "Bright/indirect light", 
      size: "6-18 in.", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Aloe", 
      scientificName: "Aloe vera",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Half a week", 
      growingConditions: "Bright/indirect light", 
      size: "1-2 ft. tall, 2-3 ft. wide", 
      difficulty: "Medium"
    ),

    Plant(
      name: "Basil", 
      scientificName: "Ocimum basilicum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Half a week", 
      growingConditions: "Bright light, stay moist", 
      size: "2-3 ft. tall", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Bromeliad", 
      scientificName: "Bromeliaceae",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "1-2 weeks in warmer months, 2-3 in colder months", 
      growingConditions: "Medium-bright light", 
      size: "1 in.-2 ft.", 
      difficulty: "Medium"
    ),

    Plant(
      name: "Burro's Tail", 
      scientificName: "Sedum morganianum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 2 weeks", 
      growingConditions: "Bright/indirect light", 
      size: "5 ft.", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Cactus", 
      scientificName: "Cactaceae",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "~10 days in warmer months, ~4 weeks in colder months", 
      growingConditions: "Bright/indirect light, high temperatures, low moisture", 
      size: "Up to 96 in. tall + 30 in. wide", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Coriander", 
      scientificName: "Coriandrum sativum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Daily", 
      growingConditions: "Indirect sunlight, light shade", 
      size: "Up to 20 in. tall", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Croton", 
      scientificName: "Cordiaeum variegatum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Mist daily in warmer months; every few days in colder months", 
      growingConditions: "Bright light, warmth, humidity", 
      size: "Up to 5 ft. tall", 
      difficulty: "Medium/Hard"
    ),

    Plant(
      name: "Echeveria Succulent", 
      scientificName: "Echeveria",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once a week to 10 days", 
      growingConditions: "Bright light, warmth", 
      size: "4-8 in. tall, 4-12 in. wide", 
      difficulty: "Medium"
    ),

    Plant(
      name: "English Ivy", 
      scientificName: "Hedera helix",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once a week", 
      growingConditions: "Bright/indirect light", 
      size: "Can reach 100 ft. long", 
      difficulty: "Medium"
    ),

    Plant(
      name: "Fiddle-leaf fig", 
      scientificName: "Ficus lyrata",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 1-2 weeks", 
      growingConditions: "Bright light, warmth, moist soil", 
      size: "up to 10 ft tall", 
      difficulty: "Medium"
    ),

    Plant(
      name: "Inchplant", 
      scientificName: "Tradescantia zebrina ",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once a week", 
      growingConditions: "Medium to bright light", 
      size: "6 in.", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Jade Plant", 
      scientificName: "Crassula ovata",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 2-3 weeks", 
      growingConditions: "Direct light for older plants, indirect for younger plants", 
      size: "3-6 ft. tall", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Maidenhair fern", 
      scientificName: "Adiantum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Daily/every other day", 
      growingConditions: "Bright/indirect light, warmth, moist soil", 
      size: "1-2 ft. tall + wide", 
      difficulty: "Medium/Hard"
    ),

    Plant(
      name: "Mint", 
      scientificName: "Mentha",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Half a week", 
      growingConditions: "Bright/indirect light", 
      size: "1-2 ft. tall", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Money Tree", 
      scientificName: "Pachira aquatica",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 1-2 weeks", 
      growingConditions: "Bright/indirect light", 
      size: "Up to 8 ft. tall", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Monstera", 
      scientificName: "Monstera deliciosa",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 1-2 weeks", 
      growingConditions: "Bright/indirect light, warmth, humidity", 
      size: "10-15 ft. tall + 8 ft. wide", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Moth Orchid ", 
      scientificName: "Phalaenopsis",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "2-3 times a month", 
      growingConditions: "Bright light, warmth, humidity", 
      size: "~1.5 in. tall", 
      difficulty: "Medium"
    ),

    Plant(
      name: "Peace Lily", 
      scientificName: "Spathiphyllum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once a week", 
      growingConditions: "Bright/indirect light", 
      size: "2-3 ft. tall", 
      difficulty: "Medium"
    ),

    Plant(
      name: "Peperomia", 
      scientificName: "Peperomia obtusifolia",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 1-2 weeks", 
      growingConditions: "Bright/indirect light", 
      size: "Up to 3 ft. tall + 2 ft. wide", 
      difficulty: "easy"
    ),

    Plant(
      name: "Philodendron", 
      scientificName: "Philodendron hederaceum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once a week", 
      growingConditions: "Indirect light, moist soil", 
      size: "1-3 ft. tall + 1-6 ft. wide", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Ponytail Palm", 
      scientificName: "Beaucarnea recurvata",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 2 weeks", 
      growingConditions: "Bright light", 
      size: "Up to 8 ft. tall", 
      difficulty: "Easy"
    ),

    Plant(
      name: "Pothos", 
      scientificName: "Epipremnum aureum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 1-2 weeks", 
      growingConditions: "Bright/indirect light", 
      size: "6-10 ft. indoors, 60 ft. outdoors", 
      difficulty: "Easy"
    ),
    
    Plant(
      name: "Rubber Plant", 
      scientificName: "Ficus elastica",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 1-2 weeks", 
      growingConditions: "Bright/indirect light", 
      size: "2-10 ft. tall", 
      difficulty: "Easy"
    ),    

    Plant(
      name: "Sage", 
      scientificName: "Salvia officinalis",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Half a week", 
      growingConditions: "Medium to full sun", 
      size: "Up to 2.5 ft tall", 
      difficulty: "Easy"
    ),    

    Plant(
      name: "Snake Plant", 
      scientificName: "Dracaena trifasciata",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 2 weeks", 
      growingConditions: "Any light level", 
      size: "Up to 3 ft. tall + wide", 
      difficulty: "Easy"
    ),    

    Plant(
      name: "Spider Plant", 
      scientificName: "Chlorophytum comosum",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once a week", 
      growingConditions: "Medium to bright light", 
      size: "1-2 ft. tall", 
      difficulty: "Easy"
    ),   

    Plant(
      name: "String of Pearls", 
      scientificName: "Curio Rowlyanus",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 1-2 weeks", 
      growingConditions: "Bright/indirect light, warmth, low humidity", 
      size: "1-2 ft. long", 
      difficulty: "Easy"
    ),    

    Plant(
      name: "Thyme", 
      scientificName: "Thymus vulgaris",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every other week/once a month", 
      growingConditions: "Bright light, warmth", 
      size: "6-12 in. tall + wide", 
      difficulty: "Easy"
    ),   

    Plant(
      name: "Venus Fly Trap", 
      scientificName: "Dionaea muscipula",
      description: "description", 
      imagePath: "lib/images/alola-vulpix.jpeg",
      watering: "Once every 2 weeks", 
      growingConditions: "Bright sunlight, humidity, outdoors", 
      size: "5 in. diameter", 
      difficulty: "Medium"
    ),    
  ];

  // user plants
  List<Plant> _userPlants = [];

  // getter methods
  List<Plant> get plantMenu => _plantMenu;
  List<Plant> get userPlants => _userPlants;

  // add to homepage
  void addToCollection(Plant plantItem, int quantity)
  {
    for (int i = 0; i < quantity; i++)
    {
      _userPlants.add(plantItem);
    }
    notifyListeners();
  }

  // remove from homepage
  void removeFromCollection(Plant plant)
  {
    _userPlants.remove(plant);
    notifyListeners();
  }
}
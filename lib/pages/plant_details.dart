import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thyme_wise/components/add_plant_button.dart';
import 'package:thyme_wise/models/plant.dart';

class PlantDetails extends StatefulWidget {
  final Plant plant;
  const PlantDetails({super.key, required this.plant});

  @override
  State<PlantDetails> createState() => _PlantDetailsState();
}



class _PlantDetailsState extends State<PlantDetails> {

  void addToHome() {}

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
          Expanded(child: ListView(
            children: [
              // image

              // scientific name
              
              // water

              // sunlight
              
              // description
              
              // add to homepage
              AddPlantButton(text: "Add this plant!", onTap: addToHome)
            ],
          ))
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thyme_wise/components/add_plant_button.dart';
import 'package:thyme_wise/models/plant.dart';
import 'package:thyme_wise/models/plant_catalog.dart';
import 'package:thyme_wise/pages/home.dart';

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
        content: const Text(
          "please work",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center
        ),
        actions: [
          IconButton(
            onPressed: () {
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
            child: ListView(
              children: [
                Image.asset(
                  widget.plant.imagePath,
                  height: 200,
                ),


              ],
            )
          ),

          Container(
            color: Color.fromARGB(255, 201, 231, 187),
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                AddPlantButton(text: "Add to your collection!", onTap: addToCollection)
              ],
            )
          )
        ],
      )
    );
  }
}
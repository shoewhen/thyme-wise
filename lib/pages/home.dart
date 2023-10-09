import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:thyme_wise/models/plant.dart";
import "package:thyme_wise/models/plant_catalog.dart";
import "package:thyme_wise/pages/settings.dart";
import "package:thyme_wise/pages/add_plant.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/plantbackgroundplaceholder.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  icon: Image.asset('lib/images/alola-vulpix.jpeg'),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  }),
              ),
              //const SizedBox(height: 575),
              const Align(
                alignment: Alignment.center, 
                child: Column(
                  children: [
                    
                    AddedPlants(),
                    AddPLantButton(),
                    
                  ],
                )
              ),
            ],
          ),
        ),
      )
    );
  }
}

class AddedPlants extends StatelessWidget {
  const AddedPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Consumer<PlantCatalog>(
        builder: (context, value, child) => Scaffold(
          body: ListView.builder(
            itemCount: value.plantMenu.length,
            itemBuilder: (context, index) {
              final Plant plant = value.plantMenu[index];
              final String plantName = plant.name;
              return Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                  title: Text(plantName),
                ),
              );
            },
          )
        ),
      ),
    );
  }
}

class AddPLantButton extends StatelessWidget {
  const AddPLantButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Ink(
            decoration: const ShapeDecoration(
              shape: CircleBorder(),
              color: Colors.white,
            ),
      
            child: IconButton(
              padding: const EdgeInsets.all(0.0),
              icon: const Icon(Icons.add),
              iconSize: 40,
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddPlant()),
                );
              }
            )
          )
        ),
      )
    );
  }
}

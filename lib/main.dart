import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thyme_wise/models/plant_catalog.dart';
import 'package:thyme_wise/pages/add_plant.dart';
import 'package:thyme_wise/pages/settings.dart';
import 'pages/home.dart';
import 'pages/intro.dart';

void main() async {

  runApp(
      ChangeNotifierProvider(
      create: (context) => PlantCatalog(), 
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Intro(),
      routes: {
        '/intropage': (context) => const Intro(),
        '/homepage': (context) => const Home(),
        '/settings': (context) => const Settings(),
        '/add_plant':(context) => const AddPlant()
      }
    );
  }
}

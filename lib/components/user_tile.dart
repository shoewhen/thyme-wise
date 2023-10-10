import 'package:flutter/material.dart';
import 'package:thyme_wise/models/plant.dart';

class UserTile extends StatelessWidget {
  final Plant plant;
  final void Function()? onTap;
  const UserTile({
    super.key, 
    required this.plant, 
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            Image.asset(
              plant.imagePath,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
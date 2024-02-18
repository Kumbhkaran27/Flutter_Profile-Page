import 'package:flutter/material.dart';
import 'achievement.dart';

class AchievementsTable extends StatelessWidget {
  final List<Achievement> achievements;

  AchievementsTable({required this.achievements});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Achievements',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Column(
          children: _buildRows(),
        ),
      ],
    );
  }

  List<Widget> _buildRows() {
    List<Widget> rows = [];

    for (var achievement in achievements) {
      rows.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                achievement.imageUrl,
                width: 400, // Adjust width as needed
                height: 200, // Adjust height as needed
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5),
              Text(
                achievement.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
    }

    return rows;
  }
}

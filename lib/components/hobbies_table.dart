import 'package:flutter/material.dart';
import 'hobby.dart';

class HobbiesTable extends StatelessWidget {
  final List<Hobby> hobbies;

  HobbiesTable({required this.hobbies});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hobbies/Likes',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Table(
          border: TableBorder.all(),
          children: _buildTableRows(),
        ),
      ],
    );
  }

  List<TableRow> _buildTableRows() {
    List<TableRow> rows = [];

    for (int i = 0; i < hobbies.length; i += 3) {
      List<Widget> cells = [];

      for (int j = i; j < i + 3 && j < hobbies.length; j++) {
        cells.add(
          TableCell(
            child: Column(
              children: [
                Image.asset(
                  hobbies[j].imageUrl,
                  width: 60, // Adjust width as needed
                  height: 60, // Adjust height as needed
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 5),
                Text(
                  hobbies[j].name,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      }

      rows.add(TableRow(children: cells));
    }

    return rows;
  }
}

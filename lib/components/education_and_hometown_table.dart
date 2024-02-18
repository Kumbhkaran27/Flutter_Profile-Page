import 'package:flutter/material.dart';

class EducationAndHometownTable extends StatelessWidget {
  final String education;
  final String hometown;

  EducationAndHometownTable({
    required this.education,
    required this.hometown,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(
                  'Education :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(education),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(
                  'Hometown : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(hometown),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

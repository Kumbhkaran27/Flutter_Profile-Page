import 'package:flutter/material.dart';

class ProfileTable extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String sex;
  final int age;

  ProfileTable({
    required this.imageUrl,
    required this.name,
    required this.sex,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            width: 150.0, //image size controls
            height: 150.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Sex: $sex',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                'Age: $age',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

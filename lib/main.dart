import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile heading
                ProfileHeading(),

                // Profile information tables
                ProfileTable(
                  imageUrl: 'assets/images/luffy.jpeg',
                  name: 'Name: Luffy',
                  sex: 'Male',
                  age: 19,
                ),
               

                // Second table with education and hometown
                SizedBox(height: 20), // Adding  space between tables
                EducationAndHometownTable(
                  education: 'Bachelor of Piracy',
                  hometown: 'Foosha Village',
                ),

                Hobbies_Table(

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Hobbies_Table extends StatelessWidget {
  
}

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
            width: 100.0, //image size controls
            height: 100.0, 
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          SizedBox(width: 40.0),
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

class ProfileHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: const Text(
        'MINGLE',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

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
                padding: EdgeInsets.all(8.0),
                child: Text('Education :',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(education),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Hometown : ',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(hometown),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

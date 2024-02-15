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
                SizedBox(height: 20), // Adding space between tables
                EducationAndHometownTable(
                  education: 'Bachelor of Piracy',
                  hometown: 'Foosha Village',
                ),

                // Hobbies table
                SizedBox(height: 20), // Adding space between tables
                HobbiesTable(
                  hobbies: [
                    Hobby(name: 'Sailing', imageUrl: 'assets/images/Sailing.png'),
                    Hobby(name: 'Fishing', imageUrl: 'assets/images/Fishing.png'),
                    Hobby(name: 'Foodie', imageUrl: 'assets/images/food.png'),
                    Hobby(name: 'Straw Hat', imageUrl: 'assets/images/Hat.jpg'),
                    Hobby(name: 'Fighting', imageUrl: 'assets/images/Fight.jpeg'),
                    Hobby(name: 'Exploring', imageUrl: 'assets/images/Explore.png'),
                  ],
                ),

                // Achievements table
                SizedBox(height: 20), // Adding space between tables
                AchievementsTable(
                  achievements: [
                    Achievement(name: 'Unlocking Gear Fifth', imageUrl: 'assets/images/Gear5.png'),
                    Achievement(name: 'Mastering Advanced Conquerors Haki In A Night', imageUrl: 'assets/images/Haki.png'),
                    Achievement(name: 'Getting A Rookies Recognition From Whitebeard', imageUrl: 'assets/images/Rookie.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Achievement {
  final String name;
  final String imageUrl;

  Achievement({required this.name, required this.imageUrl});
}

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
                width: 280, // Adjust width as needed
                height: 120, // Adjust height as needed
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

class Hobby {
  final String name;
  final String imageUrl;

  Hobby({required this.name, required this.imageUrl});
}

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
          fontSize: 36.0,
          
          fontWeight: FontWeight.bold,
          color: Colors.red,
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
                child: Text(
                  'Education :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
                child: Text(
                  'Hometown : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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

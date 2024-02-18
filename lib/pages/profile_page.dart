import 'package:flutter/material.dart';
import '../components/profile_heading.dart';
import '../components/profile_table.dart';
import '../components/achievements_table.dart';
import '../components/hobbies_table.dart';
import '../components/achievement.dart';
import '../components/hobby.dart';
import '../components/education_and_hometown_table.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            Center(
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
                      Achievement(name: 'Unlocking Gear Fifth', imageUrl: 'assets/images/Gear5.jpeg'),
                      Achievement(name: 'Mastering Advanced Conquerors Haki In A Night', imageUrl: 'assets/images/Haki.jpeg'),
                      Achievement(name: 'Getting A Rookies Recognition From Whitebeard', imageUrl: 'assets/images/Rookie.jpeg'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

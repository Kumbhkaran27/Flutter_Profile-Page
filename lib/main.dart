import 'package:flutter/material.dart';
import '../pages/profile_page.dart'; // Import the profile page

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(), // Use the ProfilePage as the home page
    );
  }
}

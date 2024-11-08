import 'package:flutter/material.dart';
import 'package:test_app/profile_ui/professional_profile.dart';
// import 'professional_profile.dart'; // Import the new file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professional Profile',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.purple[50],
      ),
      home: ProfessionalProfile(), // Use ProfessionalProfile as the home screen
    );
  }
}

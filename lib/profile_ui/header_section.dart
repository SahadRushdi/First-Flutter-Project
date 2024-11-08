import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/profile.jpg'), // Profile picture path
        ),
        SizedBox(height: 10),
        Text('Your Name', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        Text('Professional Title', style: TextStyle(fontSize: 18)),
        Text('Location', style: TextStyle(fontSize: 16, color: Colors.grey)),
      ],
    );
  }
}

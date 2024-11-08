import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('B.S. in Computer Science', style: TextStyle(fontSize: 16)),
          Text('University Name, Year of Completion', style: TextStyle(fontSize: 16, color: Colors.grey)),
        ],
      ),
    );
  }
}

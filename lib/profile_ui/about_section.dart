import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Brief professional summary goes here...',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Current Position: Software Developer',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

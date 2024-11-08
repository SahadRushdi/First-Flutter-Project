import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  Widget buildSkill(String skill, double proficiency) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(skill, style: TextStyle(fontSize: 16)),
        SizedBox(height: 5),
        LinearProgressIndicator(value: proficiency, minHeight: 5),
        SizedBox(height: 10),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          buildSkill('Dart', 0.8),
          buildSkill('Flutter', 0.7),
          buildSkill('JavaScript', 0.6),
        ],
      ),
    );
  }
}

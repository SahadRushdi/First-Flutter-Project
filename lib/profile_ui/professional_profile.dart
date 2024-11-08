import 'package:flutter/material.dart';

class ProfessionalProfile extends StatelessWidget {
  final String name = "John Doe";
  final String title = "Software Engineer";
  final String location = "New York, USA";
  final String summary = "Experienced software developer with expertise in Flutter and web development.";
  final List<Map<String, dynamic>> skills = [
    {"name": "Dart", "level": 0.8},
    {"name": "Flutter", "level": 0.6},
    {"name": "JavaScript", "level": 0.5},
  ];
  final String education = "B.S. in Computer Science";
  final String university = "University Name, Year of Completion";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Professional Profile")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(radius: 50, backgroundColor: Colors.purple[100]),
            SizedBox(height: 16),
            Text(name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(title),
            Text(location, style: TextStyle(color: Colors.grey)),
            SizedBox(height: 16),
            Text("About Me", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(summary),
            Text("Current Position: $title"),
            Divider(),
            Text("Skills", style: TextStyle(fontWeight: FontWeight.bold)),
            Column(
              children: skills.map((skill) => SkillIndicator(skill: skill)).toList(),
            ),
            Divider(),
            Text("Education", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(education),
            Text(university, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class SkillIndicator extends StatelessWidget {
  final Map<String, dynamic> skill;
  SkillIndicator({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(skill['name']),
        LinearProgressIndicator(value: skill['level'], color: Colors.purple, backgroundColor: Colors.purple[100]),
        SizedBox(height: 8),
      ],
    );
  }
}

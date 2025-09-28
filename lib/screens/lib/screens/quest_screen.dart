import 'package:flutter/material.dart';

class QuestScreen extends StatelessWidget {
  const QuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> quests = [
      {"title": "Visit 5 Landmarks", "xp": 50, "completed": false},
      {"title": "Try Local Cuisine", "xp": 30, "completed": true},
      {"title": "Take 10 Photos", "xp": 40, "completed": false},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Quests"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: quests.length,
        itemBuilder: (context, index) {
          final quest = quests[index];
          return Card(
            child: ListTile(
              leading: Icon(
                quest["completed"]
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
                color: quest["completed"] ? Colors.green : Colors.grey,
              ),
              title: Text(quest["title"]),
              subtitle: Text("${quest["xp"]} XP"),
              trailing: quest["completed"]
                  ? const Text(
                      "Completed",
                      style: TextStyle(color: Colors.green),
                    )
                  : const Text(
                      "In Progress",
                      style: TextStyle(color: Colors.orange),
                    ),
            ),
          );
        },
      ),
    );
  }
}

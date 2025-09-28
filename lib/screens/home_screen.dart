import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> itinerary = [
    "Day 1: Arrival & City Tour",
    "Day 2: Adventure Quest",
    "Day 3: Beach Relaxation",
    "Day 4: Cultural Exploration",
    "Day 5: Departure"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Itinerary")),
      body: ListView.builder(
        itemCount: itinerary.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.check_circle_outline),
            title: Text(itinerary[index]),
          );
        },
      ),
    );
  }
}

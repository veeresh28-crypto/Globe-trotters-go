import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';

void main() {
  runApp(GlobeTrottersApp());
}

class GlobeTrottersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Globe Trotters',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OnboardingScreen(),
    );
  }
}

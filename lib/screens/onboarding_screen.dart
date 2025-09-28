import 'package:flutter/material.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _pageIndex = 0;

  List<String> texts = [
    "Welcome to Globe Trotters!",
    "Plan your trips effortlessly.",
    "Earn rewards with quests!"
  ];

  void _nextPage() {
    if (_pageIndex < texts.length - 1) {
      _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        onPageChanged: (index) => setState(() => _pageIndex = index),
        itemCount: texts.length,
        itemBuilder: (context, index) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(texts[index], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _nextPage,
                  child: Text(index == texts.length - 1 ? "Get Started" : "Next"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

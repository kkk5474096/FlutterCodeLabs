import 'package:flutter/material.dart';

void main() {
  runApp(const AnimationApp());
}

class AnimationApp extends StatelessWidget {
  const AnimationApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Animation",
        home: Scaffold(
          appBar: AppBar(
              title: const Text("Flutter Animation")
          ),
          body: const Center(
            child: Text("hi"),
          ),
        )
    );
  }
}
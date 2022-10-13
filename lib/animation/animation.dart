import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const AnimationApp());
}

// 2번째
class AnimationLogo extends AnimatedWidget {
  const AnimationLogo({super.key, required Animation<double> animation})
  : super(listenable: animation);


  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width:  animation.value,
        child: const FlutterLogo()
      ),
    );
  }
}

class AnimationApp extends StatefulWidget {
  const AnimationApp({super.key});


  @override
  State<AnimationApp> createState() => _AnimationAppState();
}

class _AnimationAppState extends State<AnimationApp> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    // 1번째
    // animation = Tween<double>(begin: 0, end: 300).animate(controller)
    // ..addListener(() {
    //   setState(() {
    //
    //   });
    // });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimationLogo(animation: animation);
    // 1번째
    // return Center(
    //   child: Container(
    //     margin: const EdgeInsets.symmetric(vertical: 10),
    //     height: animation.value,
    //     width: animation.value,
    //     child: const FlutterLogo(),
    //   ),
    // );
    return AnimationLogo(animation: animation);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
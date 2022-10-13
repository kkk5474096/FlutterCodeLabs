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
    // 2번째
    // animation.addStatusListener((status) {
    //   if(status == AnimationStatus.completed) {
    //     controller.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    //   print("$status");
    // });
    //------------------------------
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
    return GrowTransition(animation: animation, child: const LogoWidget());
    // 2번째
    // return AnimationLogo(animation: animation);
    //--------------------------------
    // 1번째
    // return Center(
    //   child: Container(
    //     margin: const EdgeInsets.symmetric(vertical: 10),
    //     height: animation.value,
    //     width: animation.value,
    //     child: const FlutterLogo(),
    //   ),
    // );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

//----------------------------------------------------------------------
//----------------------------------------------------------------------
class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const FlutterLogo(),
    );
  }
}

class GrowTransition extends StatelessWidget {
  const GrowTransition({required this.child, required this.animation, super.key});

  final Widget child;
  final Animation<double> animation;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return SizedBox(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}
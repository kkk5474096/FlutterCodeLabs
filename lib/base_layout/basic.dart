import 'package:flutter/material.dart';

void main() => runApp(BasicApp());

class BasicApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter basic",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("flutter basic"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Flutter McFlutter",
                style: Theme.of(context).textTheme.headline5),
            const Text("Experienced App Developer")
          ],
        ),
      ),
    );
  }
}
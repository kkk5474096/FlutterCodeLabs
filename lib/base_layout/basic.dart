import 'package:flutter/material.dart';

void main() => runApp(const BasicApp());

class BasicApp extends StatelessWidget {
  const BasicApp({super.key});


  @override
  Widget build(BuildContext context) {
    Widget container =
    Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.account_circle, size: 50),
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flutter McFlutter",
                          style: Theme.of(context).textTheme.headline5),
                      const Text("Experienced App Developer")
                    ],
                  ),
              ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('123 Main Street'),
              SizedBox(width: 8),
              Text('415-555-0198')
            ],
          ),
        ],
      );
    
    return MaterialApp(
      title: "flutter basic",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("flutter basic"),
        ),
        body: container
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(LayoutApp());
}

class LayoutApp extends StatelessWidget {
  LayoutApp({super.key});

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            )
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41')
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter layout demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter layout demo"),
        ),
        body: Column(
          children: [titleSection],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, Color> colors = {
    'purple': Colors.purple,
    'blue': Colors.blue,
    'yellow': Colors.yellow,
    'pink': Colors.pink,
    'teal': Colors.teal,
    'orange': Colors.orange,
    'red': Colors.red
  };

  Color? selectedColor;
  void _setColor(String colorNAme, Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: selectedColor ?? Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You are operating on ${Platform.operatingSystem}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            for (var entry in colors.entries)
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: entry.value, minimumSize: Size(300, 60)),
                  child: Text(
                    '',
                  ),
                  onPressed: () => _setColor(entry.key, entry.value),
                ),
              )
          ],
        ));
  }
}

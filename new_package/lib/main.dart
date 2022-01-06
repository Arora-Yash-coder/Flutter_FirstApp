import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Packages',
      home: Home(),
    );
  }
}

void fetchJson() async {
  var response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  print(convert.jsonDecode(response.body));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
    fetchJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

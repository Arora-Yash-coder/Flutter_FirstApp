import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crash Course'),
        elevation: 10.0,
      ),
      body: Center(
        child: Text('Crash Course'),
      ),
      drawer: Drawer(
        child: Text('Task 1'),
      ),
    );
  }
}

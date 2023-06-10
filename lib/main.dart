import 'package:flutter/material.dart';
import 'package:temp2/screens/homepage.dart';
import 'package:temp2/widgets/tile.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DooIt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

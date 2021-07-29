import 'package:facebook/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Facebook());
}

class Facebook extends StatelessWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

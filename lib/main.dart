import 'package:ams/screens/landing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ams upwork demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const Landing(),
    );
  }
}


import 'package:flutter/material.dart';
import 'myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          useMaterial3: false,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(),
    );
  }
}






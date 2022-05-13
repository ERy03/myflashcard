import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My flashcard",
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

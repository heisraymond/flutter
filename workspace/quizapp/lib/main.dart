import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';

void main() {
  runApp(
    // Passing widgets
    MaterialApp(
      // This is one of the important widgets in dart as
      // It wraps your overall interface and do alot of behind the scenes 
      // Setup work
      home: Scaffold(
        // My custom widgets will have separate files 
        // and will be passed here just as values
        body: StartScreen(),
      ),
    ),
  );
}
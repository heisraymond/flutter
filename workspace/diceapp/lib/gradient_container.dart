import 'package:flutter/material.dart';

import 'styled_text.dart';

class GradientContainer extends StatelessWidget {
  // Constructor function
  const GradientContainer({super.key});

  @override
  // Returns a widget
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 38, 115, 247),
              const Color.fromARGB(255, 83, 132, 217)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: Center(
          // child: StyledText()
          // When calling a class like this, it means you are
          // also calling constructor function of the class
          child: StyledText('Hello world!')
          ),
      );
  }
}



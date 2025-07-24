import 'package:flutter/material.dart';

import 'styled_text.dart';

class GradientContainer extends StatelessWidget {
  // Constructor function
  // Let's add named positional for colors
  const GradientContainer(this.colors, {super.key});

  // Class variables
  final List<Color> colors;

  @override
  // Returns a widget
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: Center(
          // child: StyledText()
          // When calling a class like this, it means you are
          // also calling constructor function of the class
          // If we want the value to be passed to the StyledText()
          // class, then we have to define the value as an argument
          // in it's constructor function
          child: StyledText('Hello world!')
          ),
      );
  }
}



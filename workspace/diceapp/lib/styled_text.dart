import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // You have to define the argument so as to allow value passing
  // when calling the class as a method
  // 1. Named arguments are written with in {}
  // 2. Positional arguments are written out of {} i.e String Text
  const StyledText(this.text, {super.key});
  // To use the text in build method, you can't just call it as text
  // This is because the argument in the constructor function is not 
  // magically available in the methods of the same class. To solve 
  // this we add something called class variable (like property of the class)
  // to use the class var well, we use this.text

  // Class variables
  final String text;

  @override
  // A method that returns a widget to be displayed 
  // on the screen
  Widget build(context) {
    return  Text(
            text, 
            style: const TextStyle(
              color: Color.fromARGB(229, 11, 11, 11),
              fontSize: 32,
            ),
          );
  }
} 
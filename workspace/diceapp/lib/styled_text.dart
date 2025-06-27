import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return  Text(
            "Hello world!", 
            style: TextStyle(
              color: Color.fromARGB(229, 11, 11, 11),
              fontSize: 32,
            ),
          );
  }
}
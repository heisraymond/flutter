import 'package:flutter/material.dart';
import 'gradient_container.dart';


/*This is a custom fucntion in flutter
Here we are defining a function

void: is the return type of the fucntion
main(): is the function name
*/
void main() {
/*This function runs the app / 
Tells flutter what UI to display on the 
screen

Here we are calling the fucntion
*/
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(),
      ),
    ),
  );
} 


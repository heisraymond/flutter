import 'package:flutter/material.dart';


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
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 138, 255),
      body: Center(
        child: Text("Hello world!"),
        )
      ),
    ),
  );
} 

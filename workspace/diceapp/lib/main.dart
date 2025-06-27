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
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(),
      ),
    ),
  );
} 

class GradientContainer extends StatelessWidget {
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
        child: const Center(
          child: Text(
            "Hello world!", 
            style: TextStyle(
              color: Color.fromARGB(229, 11, 11, 11),
              fontSize: 32,
            ),
            ),
          ),
      );
  }
}

import 'package:flutter/material.dart';

//import 'styled_text.dart';

// Variables can be assigned
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  // Constructor function
  // Let's add named positional for colors
  GradientContainer(this.colors, {super.key});

  // Class variables
  final List<Color> colors;
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-3.png';
    print('Changing image');
  }

  @override
  // Returns a widget
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: startAlignment,
            end: endAlignment
          ),
        ),
        child: Center(
          // child: StyledText()
          // When calling a class like this, it means you are
          // also calling constructor function of the class
          // If we want the value to be passed to the StyledText()
          // class, then we have to define the value as an argument
          // in it's constructor function
          child: Column(
            //By default main axis size is maximum (stays at the top)
            //But we use minimum, so as the dice can stay at the center
            mainAxisSize: MainAxisSize.min,
            children: [
             Image.asset(
              activeDiceImage, 
              width: 200,
             ),
             const SizedBox(height: 20,),
             TextButton(
              onPressed: rollDice, 
              //Just a convention, style first
              //then follows widget arguments
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 254, 245, 215),
                textStyle: const TextStyle(
                  inherit: true,
                  fontSize: 28,
                )
              ),
              child: const Text('Roll Dice')
              )
            ],
          ) 
          ),
      );
  }
}



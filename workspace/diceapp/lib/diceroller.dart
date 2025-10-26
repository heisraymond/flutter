import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState(); 
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
            //By default main axis size is maximum (stays at the top)
            //But we use minimum, so as the dice can stay at the center
            mainAxisSize: MainAxisSize.min,
            children: [
             Image.asset(
              'assets/images/dice-$currentDiceRoll.png', 
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
          );
  }
}
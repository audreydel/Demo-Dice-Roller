import 'package:flutter/material.dart';
import 'dart:math'; // help random numbers

final randomiser =
    Random(); // globally available data container --> improved efficiency

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  // State<WidgetClassName> : generic data type
  State<DiceRoller> createState() {
    // return State object
    return _DiceRollerState(); // execute constructor of class
  }
}

// _ClassName : private class
class _DiceRollerState extends State<DiceRoller> {
  var currDiceRoll = 2;

  void rollDice() {
    setState(() {
      // available in state based classes --> re-execute build function
      currDiceRoll = randomiser.nextInt(6) +
          1; // nextInt(x) --> generate number from 1 to x (not incl x)
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currDiceRoll.png', // inject diceRoll value into stringe
            width: 200,
          ),
          TextButton(
            onPressed: rollDice, // passing pointer to function
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(13),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text('Roll The Dice'),
          ),
        ],
      ),
    );
  }
}

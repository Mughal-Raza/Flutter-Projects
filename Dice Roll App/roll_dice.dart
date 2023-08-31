import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceAfterRoll = 1;
  void rollDice() {
    setState(() {
      diceAfterRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceAfterRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 20),
                foregroundColor: const Color.fromARGB(255, 7, 0, 0),
                textStyle: const TextStyle(
                  fontSize: 30,
                )),
            child: const Text('Role')),
      ],
    );
  }
}

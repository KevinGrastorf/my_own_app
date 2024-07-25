import 'package:flutter/material.dart';

class Press extends StatefulWidget {
  const Press({super.key});

  @override
  State<Press> createState() => _PressState();
}

class _PressState extends State<Press> {
  var text = const Text('Hello World!');

  void press() {
    setState(() {
      text = const Text('I\'ve been pressed!');
    });
  }

  void press2() {
    setState(() {
      text = const Text('Hee, hee!! I\'m ticklish!');
    });
  }

  void press3() {
    setState(() {
      text = const Text('Hello World!');
    });
  }

  void toggle() {
    if (text == const Text('Hello World!') ||
        text == const Text('Hee, hee!! I\'m ticklish!')) {
      setState(() {
        text = const Text('I\'ve been pressed!');
      });
    } else if (text == const Text('I\'ve been pressed!') ||
        text == const Text('Hee, hee!! I\'m ticklish!')) {
      setState(() {
        text = const Text('Hello World!');
      });
    } else {
      text = const Text('Hee, hee!! I\'m ticklish!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: text),
        Container(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: ElevatedButton(
              onPressed: press,
              child: const Text('Press Me'),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
          child: Center(
            child: ElevatedButton(
              onPressed: press2,
              child: const Text('Press Me, Too!'),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
          child: Center(
            child: ElevatedButton(
              onPressed: press3,
              child: const Text('Reset'),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
          child: Center(
            child: ElevatedButton(
              onPressed: toggle,
              child: const Text('Test'),
            ),
          ),
        ),
      ],
    );
  }
}

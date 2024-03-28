import 'package:flutter/material.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 2'),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: const Text(
            'The Quick Brown Fox Jumped Over The lazy Dog',
            style: TextStyle(
                color: Color.fromRGBO(10, 10, 10, 1.0),
                fontSize: 20,
                fontWeight: FontWeight.w600,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 1,
                      color: Color.fromRGBO(250, 25, 250, 0.8))
                ]),
          )),
    );
  }
}

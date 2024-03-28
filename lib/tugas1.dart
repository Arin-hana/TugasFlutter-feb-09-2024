import 'package:flutter/material.dart';

class Tugas1 extends StatelessWidget {
  const Tugas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 1'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.8),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(100, 10, 200, 1),
            border: Border.all(
              width: 8,
              color: const Color.fromRGBO(150, 100, 255, 1),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 300,
          height: 300,
          margin: const EdgeInsets.only(bottom: 100),
          padding: const EdgeInsets.only(bottom: 50),
          child: const Text(
            'Button',
            style: TextStyle(
                fontSize: 50.0, color: Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
      ),
    );
  }
}

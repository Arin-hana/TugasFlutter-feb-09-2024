import 'package:flutter/material.dart';
import 'package:test_/main.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Menghilangkan AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Your Sign up was successful',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman Start
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainClass()));
              },
              child: const Text(
                'Continue to Home',
                style: TextStyle(
                  color: Color(0xFF2D4990), // Warna teks: #2D4990
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Success_login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Menghilangkan AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Your Login was successful',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainClass()));
              },
              child: const Text(
                'Continue to Home',
                style: TextStyle(
                  color: Color(0xFF2D4990), // Warna teks: #2D4990
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

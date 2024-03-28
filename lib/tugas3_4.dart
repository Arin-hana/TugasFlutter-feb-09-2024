import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tugas 3 dan 4'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      side: BorderSide(
                        width: 1,
                      )),
                  elevation: 50,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Go Back',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                      color: const Color.fromRGBO(10, 100, 125, 1.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Button Back',
                    style: TextStyle(
                      color: Color.fromRGBO(100, 100, 128, 1.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

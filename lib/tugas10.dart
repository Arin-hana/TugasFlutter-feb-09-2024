import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './tugas10_login.dart';

class Tugas10 extends StatelessWidget {
  const Tugas10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(),
        ),
        home: Scaffold(
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 300,
                    padding: EdgeInsets.all(5),
                    child: Image.asset(
                      'img/img_tugas_login.png',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Buy',
                          style: TextStyle(
                            color: Color.fromRGBO(45, 73, 144, 1.0),
                          ),
                        ),
                        TextSpan(text: ' And '),
                        TextSpan(
                          text: 'Sell',
                          style: TextStyle(
                            color: Color.fromRGBO(45, 73, 144, 1.0),
                          ),
                        ),
                        TextSpan(text: ' Anything Faster With The Chunky App'),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    padding: const EdgeInsets.only(bottom: 80),
                    child: const Text(
                        'Massive discounts and offers when you shop.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        )),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: FilledButton(
                            style: FilledButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(45, 73, 144, 1.0),
                                shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                minimumSize: const Size(340, 55)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const FormLogin()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                    color: Color.fromRGBO(45, 73, 144, 1.0)),
                                shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                minimumSize: const Size(340, 55)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()));
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(45, 73, 144, 1.0)),
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './tugas1.dart';
import './tugas2.dart';
import './tugas3_4.dart';
import './tugas5_6.dart';
import './tugas7_9.dart';
import './tugas10.dart';

void main() {
  runApp(const MainClass());
  GoogleFonts.config.allowRuntimeFetching = true;
}

class MainClass extends StatelessWidget {
  const MainClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tugas widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromRGBO(100, 100, 200, 1))),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tugas widget',
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: ListView(
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                title: const Text('Tugas 1'),
                subtitle: const Text('Container'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Tugas1()));
                },
              ),
              ListTile(
                title: const Text('Tugas 2'),
                subtitle: const Text('Text'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Tugas2()));
                },
              ),
              ListTile(
                title: const Text('Tugas 3/4'),
                subtitle: const Text('Buttons'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Tugas3()));
                },
              ),
              ListTile(
                title: const Text('Tugas 5/6'),
                subtitle: const Text('Image'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Tugas5()));
                },
              ),
              ListTile(
                title: const Text('Tugas 7-9'),
                subtitle: const Text('Rows, Columns, Grids'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Tugas7()));
                },
              ),
              ListTile(
                title: const Text('Tugas 10'),
                subtitle: const Text('Login'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Tugas10()));
                },
              ),
            ]).toList(),
          ),
        ));
  }
}

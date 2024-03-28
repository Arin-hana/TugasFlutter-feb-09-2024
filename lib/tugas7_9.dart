import 'package:flutter/material.dart';

class Tugas7 extends StatelessWidget {
  const Tugas7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 7 - 9'),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Text('Column'),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 240),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(150, 100, 255, 1.0)),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(bottom: 5, left: 5),
                            child: const Text(
                              'Row',
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    height: 200,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      child: Image.asset(
                                        'img/rawr.jpg',
                                      ),
                                    )),
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    height: 200,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      child: Image.network(
                                          'https://media1.tenor.com/m/6Q6iSfLCCSgAAAAC/yoisaki-kanade-running.gif'),
                                    )),
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    height: 200,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      child: Image.network(
                                        'https://media.discordapp.net/stickers/1009418283394547712.png',
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    height: 200,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      child: Image.network(
                                        'https://media.discordapp.net/stickers/994200571835850802.png?',
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          height: 200,
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            child: Image.asset(
                              'img/rawr.jpg',
                              fit: BoxFit.fitWidth,
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          height: 200,
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            child: Image.network(
                              'https://media1.tenor.com/m/6Q6iSfLCCSgAAAAC/yoisaki-kanade-running.gif',
                              fit: BoxFit.scaleDown,
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          height: 200,
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            child: Image.network(
                              'https://media.discordapp.net/stickers/1009418283394547712.png',
                              fit: BoxFit.scaleDown,
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          height: 200,
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            child: Image.network(
                              'https://media.discordapp.net/stickers/994200571835850802.png?',
                              fit: BoxFit.scaleDown,
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

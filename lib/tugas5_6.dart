import 'package:flutter/material.dart';

class Tugas5 extends StatelessWidget {
  const Tugas5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 5 dan 6'),
      ),
      body: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Card(
                      child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(2),
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Image.asset('img/rawr.jpg'),
                        ),
                      ),
                      const ListTile(
                        title: Text('asset image'),
                      )
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Card(
                      child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(2),
                        alignment: Alignment.center,
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Image.network(
                                'https://media1.tenor.com/m/6Q6iSfLCCSgAAAAC/yoisaki-kanade-running.gif')), //go kanade go ucandoit
                        /*for some reason this function doesnt work for image sites like pixiv nor gelbooru

                                example : 
                                Image.network('https://i.pximg.net/img-original/img/2023/09/07/19/02/21/111521556_p0.jpg')
                                Image.network('https://safebooru.org//images/4517/54a43eedb2874f42c269c03431e13085b6773bcb.png')

                                both output HTTP request failed, statusCode: 403

                                or more possibly.... different api code, which im too lazy to intergrate, so, just have kanade doing her best
                                */
                      ),
                      const ListTile(
                        title: Text('net image'),
                      )
                    ],
                  )),
                ),
              ],
            ),
          )),
    );
  }
}

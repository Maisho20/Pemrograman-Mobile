import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget Lesson',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dota 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  child: const Text('Group Stage'),
                  onPressed: () {},
                ),
                CupertinoButton(
                  child: const Text('Main Event'),
                  onPressed: () {},
                ),
              ],
            ),

            //Home konten
            Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Image.network(
                            'https://liquipedia.net/commons/images/thumb/b/b5/The_International_12.jpg/900px-The_International_12.jpg'),
                        const Text('The International 2023',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        const Text('Coming Soon',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )),
            //konten 1
            Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://liquipedia.net/commons/images/5/56/The_International_11.jpg',
                              width: MediaQuery.of(context).size.width / 2,
                              height: 100,
                            ),
                            Container(
                              padding: MediaQuery.of(context).padding,
                              width: MediaQuery.of(context).size.width / 2,
                              child: const Column(
                                children: [
                                  Text('The International 2022',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                      'The International 2022 is the concluding tournament of the Dota Pro Circuit and the eleventh annual edition of The International which returns to Asia for the second time',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: const Column(
                        children: [
                          Text('Singapore, 15 October 2022 -- 30 October 2022',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                )),
            //konten 2
            Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://liquipedia.net/commons/images/f/f4/The_International_10.jpg',
                              width: MediaQuery.of(context).size.width / 2,
                              height: 100,
                            ),
                            Container(
                              padding: MediaQuery.of(context).padding,
                              width: MediaQuery.of(context).size.width / 2,
                              child: const Column(
                                children: [
                                  Text('The International 2021',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                      'The tournament was originally scheduled to be held from August 18th to 23rd, 2020 in Avicii Arena in Stockholm, Sweden.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: const Column(
                        children: [
                          Text('Bucharest, 07 October 2021 -- 17 October 2021',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                )),
            //konten 3
            Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://liquipedia.net/commons/images/thumb/4/43/The_International_2019.jpg/900px-The_International_2019.jpg',
                              width: MediaQuery.of(context).size.width / 2,
                              height: 100,
                            ),
                            Container(
                              padding: MediaQuery.of(context).padding,
                              width: MediaQuery.of(context).size.width / 2,
                              child: const Column(
                                children: [
                                  Text('The International 2019',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                      'The International 2019 is the concluding tournament of the Dota Pro Circuit and the ninth annual edition of The International. The tournament will be held on Chinese soil for the first time, as it moves to the Mercedes-Benz Arena in Shanghai.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: const Column(
                        children: [
                          Text('Shanghai, 15 August 2019 -- 25 August 2019',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                )),
            //konten 3
            Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://hips.hearstapps.com/hmg-prod/images/9f752c2ed7a13954-org-1586529903.jpg',
                              width: MediaQuery.of(context).size.width / 2,
                              height: 100,
                            ),
                            Container(
                              padding: MediaQuery.of(context).padding,
                              width: MediaQuery.of(context).size.width / 2,
                              child: const Column(
                                children: [
                                  Text('Koenigsegg Gemera',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                      'As a Mega-GT and Koenigseggs first four-seater, the Gemera represents a revolutionary new vehicle category with an innovative automotive design to match. The Gemeras silhouette is long, sleek and minimal, while still keeping that iconic Koenigsegg aesthetic. ',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: const Column(
                        children: [
                          Text('Sweden, 3 March 2020',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ]),
    );
  }
}

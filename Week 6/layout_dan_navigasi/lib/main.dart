import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
              // soal 1
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // soal 2
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Fushimi Inari Shrine',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                'Kyoto, Japan',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )),
          // soal 3
          Icon(
            //membuat ikon bintang
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Sabbaha Naufal Erwanda - 2141720221\n\n'
        'Fushimi Inari Shrine (伏見稲荷大社, Fushimi Inari Taisha) is an important Shinto shrine in southern Kyoto.'
        'It is famous for its thousands of vermilion torii gates, which straddle a network of trails behind its main buildings.'
        'The trails lead into the wooded forest of the sacred Mount Inari, which stands at 233 meters and belongs to the shrine grounds.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Sabbaha Naufal Erwanda (2141720221)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // body: const Center(
        //   child: Text('Hello World'),
        // ),
        // body: Column(
        body: ListView(
          children: [
            Image.asset('assets/images/3915_top.jpg',
                width: 600, height: 240, fit: BoxFit.cover),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

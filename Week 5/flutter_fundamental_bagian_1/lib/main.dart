import 'package:flutter/material.dart';
import 'package:flutter_fundamental_bagian_1/basic_widget/text_widget.dart';
import 'package:flutter_fundamental_bagian_1/basic_widget/image_widget.dart';
// import 'package:percobaan/basic_widget/loading_cupertino.dart';
// import 'package:percobaan/basic_widget/fab_widget.dart';
import 'package:flutter_fundamental_bagian_1/basic_widget/scafold.dart';
import 'package:flutter_fundamental_bagian_1/basic_widget/dialog.dart';
import 'package:flutter_fundamental_bagian_1/basic_widget/inputSelect.dart';
import 'package:flutter_fundamental_bagian_1/basic_widget/picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MyLoading();
    // return MyFab();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),

      //using scafold Widget
      // home: const MyScaff(),
      //using dialog Widget
      // home: MyDialog(),
      //using Input dan Selection Widget
      // home: MySelect(),
      //using Date and Time Pickers
      home: MyPick(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const MyTextWidget(),
            const MyImageWidget(),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

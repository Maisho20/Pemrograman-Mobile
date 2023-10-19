import 'package:flutter/material.dart';
import 'package:membangun_navigasi_di_flutter/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  final List<Item> items = [
    Item(name: "Sugar", price: 5000),
    Item(name: "Salt", price: 2000),
  ];

  final routeName = '/item';
}

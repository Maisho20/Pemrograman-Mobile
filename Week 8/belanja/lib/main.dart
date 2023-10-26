import 'package:belanja/pages/home_pages.dart';
import 'package:belanja/pages/item_pages.dart';
import 'package:belanja/model/items.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) {
        final item = ModalRoute.of(context)!.settings.arguments as Item;
        return ItemPage(item: item);
      },
    },
  ));
}

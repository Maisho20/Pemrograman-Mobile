import 'package:belanja/model/items.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.lightBlue, Colors.purpleAccent],
          )),
        ),
        title: const Text('Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
      body: Center(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Column(
                  children: [
                    Hero(
                      tag: item.name,
                      child: Image.asset(
                        item.url.toString(),
                        width: 400,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Column(children: [
                        Text(
                          item.name.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),
                    Text(
                      'Description:\n${item.desc.toString()}',
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Text('Price: \$ ${item.price.toString()}',
                  style: const TextStyle(
                    fontSize: 18,
                  )),
              Text('Stock: ${item.stok.toString()}',
                  style: const TextStyle(
                    fontSize: 18,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text('Rating: ',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                      const Icon(Icons.star, color: Colors.blue),
                      Text(item.rating.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Sabbaha Naufal Erwanda"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "2141720221"),
        ],
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Toko Item'),
  //     ),
  //     body: Container(
  //       margin: const EdgeInsets.all(15),
  //       child: Card(
  //         child: Center(
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               Text(
  //                 itemArgs.name.toString(),
  //                 style: TextStyle(fontSize: 12),
  //               ),
  //               const SizedBox(width: 5), // Spasi antara "name" dan "with"
  //               const Text(
  //                 'with price',
  //                 style: TextStyle(fontSize: 12),
  //               ),
  //               const SizedBox(width: 5), // Spasi antara "with" dan "price"
  //               Text(
  //                 itemArgs.price.toString(),
  //                 style: TextStyle(fontSize: 12),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  //   // throw UnimplementedError();
  // }
}

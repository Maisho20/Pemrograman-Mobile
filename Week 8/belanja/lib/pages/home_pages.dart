import 'package:belanja/model/items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
        url: "https://m.media-amazon.com/images/I/81DvFNLU3HL.jpg",
        name: "Asus GeForce RTX 4090 24GB GDDR6X",
        price: 2335.94,
        stok: 5,
        rating: 8.5),
    Item(
        url:
            "https://www.rakitan.com/jsg-content/uploads/modules/produk/thumbs/small/20221114013551.jpg",
        name: "Intel Core i9 13900K 3.0GHz",
        price: 647.06,
        stok: 7,
        rating: 8.2)
  ];

  final routeName = '/item';

  //  //langkah 6
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Navigasi Toko Flutter'),
  //     ),
  //     body: Container(
  //       margin: const EdgeInsets.all(15),
  //       child: ListView.builder(
  //         padding: const EdgeInsets.all(8),
  //         itemCount: items.length,
  //         itemBuilder: (context, index) {
  //           final item = items[index];
  //           return Card(
  //             child: Container(
  //               margin: const EdgeInsets.all(8),
  //               child: Row(
  //                 children: [
  //                   Expanded(child: Text(item.name.toString())),
  //                   Expanded(
  //                     child: Text(
  //                       item.price.toString(),
  //                       textAlign: TextAlign.end,
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ),
  //           );
  //         },
  //       ),
  //     ),
  //   );

  //Langkah 7
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Navigasi Toko Flutter \nSabbaha Naufal Erwanda - 2141720221',
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Material(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, routeName, arguments: item);
                  // Navigator.pushNamed(context, '/item');
                  // Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.network(
                            item.url.toString(),
                            fit: BoxFit.fitWidth,
                            // height: 100,
                            // fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                            child: Text(
                          item.name.toString(),
                          style: TextStyle(fontSize: 12),
                        )),
                        Expanded(
                            child: Text(
                          item.stok.toString(),
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                          child: Container(
                              child: Row(
                            children: [
                              Icon(
                                //membuat ikon bintang
                                Icons.star,
                                color: Colors.blue[500],
                              ),
                              Text(item.rating.toString()),
                            ],
                          )),
                        ),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
    // throw UnimplementedError();
  }
}

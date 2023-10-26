import 'package:belanja/model/items.dart';
import 'package:belanja/pages/item_pages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // List View
  // final List<Item> items = [
  //   Item(
  //       url: "https://m.media-amazon.com/images/I/81DvFNLU3HL.jpg",
  //       name: "Asus GeForce RTX 4090 24GB GDDR6X",
  //       price: 2335.94,
  //       stok: 5,
  //       rating: 8.5),
  //   Item(
  //       url:
  //           "https://www.rakitan.com/jsg-content/uploads/modules/produk/thumbs/small/20221114013551.jpg",
  //       name: "Intel Core i9 13900K 3.0GHz",
  //       price: 647.06,
  //       stok: 7,
  //       rating: 8.2)
  // ];

  // Grid View
  final List<Item> items = [
    Item(
        url: "img/RTX 4090.jpg",
        name: "Asus GeForce RTX 4090 24GB GDDR6X",
        price: 2335.94,
        stok: 5,
        rating: 8.5,
        desc:
            "Graphic Engine\n- NVIDIA® GeForce RTX™ 4090\n\nBus Standard\n-PCI Express 4.0\n\nOpenGL\n- OpenGL®4.6\n\nVideo Memory\n- 24GB GDDR6X\n\nEngine Clock\n- OC mode: 2640 MHz\n- Default mode: 2610 MHz (Boost Clock)\n\nCUDA Core\n- 16384\n\nMemory Speed\n- 21 Gbps\n\nMemory Interface\n- 384-bit\nResolution\n- Digital Max Resolution 7680 x 4320\n\nInterface\n- Yes x 2 (Native HDMI 2.1a)\n- Yes x 3 (Native DisplayPort 1.4a)\n- HDCP Support Yes (2.3)"),
    Item(
        url: "img/Core i9.jpg",
        name: "Intel Core i9 13900K 3.0GHz",
        price: 647.06,
        stok: 7,
        rating: 8.2,
        desc:
            "CPU Model Intel Core i9-13900K (13th Gen)\nCPU Socket LGA 1700\nManufacturing Process 10 nm\nMaximum CPU Configuration 1S\nMaximum Number of PCIe Lanes 16 (Revision 5.0)\n4 (Revision 4.0)\nUnlocked Yes\nPerformance\nNumber of Cores 24 (8 x P-Cores + 16 x E-Cores)\nNumber of Threads 32\nBase Clock Speed P-Core: 3 GHz\nE-Core: 2.2 GHz\nMaximum Boost Speed P-Core Turbo: 5.4 GHz\nE-Core Turbo: 4.3 GHz\nL3 Cache 36 MB\nMemory Support\nMaximum Capacity 128 GB\nMemory Support DDR5 5600 MHz\nDDR4 3200 MHz"),
    Item(
        url: "img/SSD.jpg",
        name: "SSD Samsung 870 EVO 1TB 2.5inch SATA",
        price: 75.33,
        stok: 11,
        rating: 8.6,
        desc:
            "Specifications :\n\n- Product Type : 870 EVO SATA 2.5'' SSD\n- Capacity : 250GB / 500GB / 1TB / 2TB / 4TB\n- Interface : SATA 6 Gbps Interface\n- Compatibility : Windows10/8/7/Server 2003 (32 bit and 64 bit), Vista (SP1 and above), XP (SP2 and above), MAC OSX and Linux\n- Dimension (WxHxD) : 3.94 X 2.75  X 0.27\n- Weight : 89g.\n- Performance : Speed Read/write speeds of up to 560/530 MB/s\n- Encryption : Class 0 (AES 256) TCG/Opal v2.0, MS eDrive (IEEE1667)\n- Type Interface : SATA 6 Gb/s Interface, compatible with SATA 3 Gb/s & SATA 1.5 Gb/s interface\n- Usage Application : Client PCs / Laptops\n- Sequential Read Speed : Up to 560 MB/s Sequential Read\n- Sequential Write Speed : Up to 530 MB/s Sequential Write\n- Cache Memory : Samsung 512 MB Low Power DDR4 SDRAM\n- Trim Support : Yes\n- S.M.A.R.T. Support : yes"),
    Item(
        url: "img/ram.jpeg",
        name: "Team Elite Plus DDR4 16GB (2X8GB) 3200Mhz",
        price: 36.73,
        stok: 20,
        rating: 8.8,
        desc:
            "FEATURES\n1. New-generation product of DRAM module\n2. 1.2 V memory module\n3. Massive 16 GB Kit capacity\n4. Lifetime warranty\n5. Completely compatible with X99 chipset"),
    Item(
        url: "img/Keyboard.jpg",
        name:
            "Ducky - One 2 Mini v2 Pure White RGB Cherry MX Speed Silver - Keyboard",
        price: 81.63,
        stok: 5,
        rating: 9.5,
        desc:
            "Product Number\n- DKON2061ST-PUSPDWWT1\n\nStructure\n- Mechanical structure\n\nTrigger switch\n- Cherry MX Speed Silver\n\nConnection interface\n- USB 2.0\n\nKeycap material\n- ABS or PBT\n\nOutput key number\n- USB N\n-Key Rollover\n\nPrinting technology\n- Double-Shot or Laser Engraved\n\nDimensions\n- 302 x 108 x 40 mm\n\nWeight\n- 590g"),
    Item(
        url: "img/cooler.jpg",
        name: "CORSAIR iCUE H150i ELITE CAPELLIX XT Liquid CPU Cooler - Black",
        price: 171.37,
        stok: 3,
        rating: 8.2,
        desc:
            "The CORSAIR iCUE H150i ELITE CAPELLIX XT Liquid CPU Cooler provides powerful, high-performance cooling for your processor, with CORSAIR AF RGB ELITE fans, a 360mm radiator, and ultra-bright CAPELLIX LEDs.\n\nOUR BEST PERFORMING RGB FANS\nCORSAIR AF RGB ELITE PWM fans deliver massive low-noise airflow with AirGuide technology for extreme CPU cooling performance.Anti-vortex vanes ensure more uniform airflow over radiator fins and more optimal heat dissipation.\n\nEXTREME PERFORMANCE THERMAL PASTE\nAll ELITE CAPELLIX XT AIOs include pre-applied CORSAIR XTM70 Extreme Performance thermal paste for maximum heat transfer from your high-end processor to the cooler cold plate. For reliably high cooling performance, every step in the heat transfer and dissipation chain matters."),
  ];
  // final routeName = '/item';

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
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.lightBlue, Colors.purpleAccent],
          )),
        ),
        title: const Text(
          'Computer Components Store',
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),

      // List view
      // body: Container(
      //     margin: const EdgeInsets.all(15),
      // child: ListView.builder(
      //   padding: const EdgeInsets.all(8),
      //   itemCount: items.length,
      //   itemBuilder: (context, index) {
      //     final item = items[index];
      //     return Material(
      //       child: InkWell(
      //         onTap: () {
      //           Navigator.pushNamed(context, routeName, arguments: item);
      //           // Navigator.pushNamed(context, '/item');
      //           // Navigator.pushNamed(context, '/item', arguments: item);
      //         },
      //         child: Card(
      //           child: Container(
      //             margin: const EdgeInsets.all(8),
      //             child: Row(
      //               children: [
      //                 Expanded(
      //                   child: Image.network(
      //                     item.url.toString(),
      //                     fit: BoxFit.fitWidth,
      //                     // height: 100,
      //                     // fit: BoxFit.cover,
      //                   ),
      //                 ),
      //                 Expanded(
      //                     child: Text(
      //                   item.name.toString(),
      //                   style: TextStyle(fontSize: 12),
      //                 )),
      //                 Expanded(
      //                     child: Text(
      //                   item.stok.toString(),
      //                   textAlign: TextAlign.center,
      //                 )),
      //                 Expanded(
      //                   child: Container(
      //                       child: Row(
      //                     children: [
      //                       Icon(
      //                         //membuat ikon bintang
      //                         Icons.star,
      //                         color: Colors.blue[500],
      //                       ),
      //                       Text(item.rating.toString()),
      //                     ],
      //                   )),
      //                 ),
      //                 Expanded(
      //                   child: Text(
      //                     item.price.toString(),
      //                     textAlign: TextAlign.end,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),

      // Grid View
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          mainAxisExtent: 250,
          // childAspectRatio: (1 / 2),
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemPage(item: item),
                ),
              );
              // Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Hero(
              tag: item.name,
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        item.url.toString(),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text(
                      item.name.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '\$ ${item.price.toString()}',
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 20,
                              ),
                              Text(item.rating.toString()),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Sabbaha Naufal Erwanda"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "2141720221"),
        ],
      ),
    );
    // throw UnimplementedError();
  }
}

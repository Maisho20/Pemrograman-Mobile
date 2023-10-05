import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
        image: ResizeImage(AssetImage('assets/images/logo-polinema-png.png'),
            height: 150, width: 150));
    // image: AssetImage('assets/images/logo-polinema-png.png'));
  }
}

import 'package:flutter/material.dart';
import 'package:lzw_compression_app/src/core/views/splash_view.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LZW Compression Algorithm',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: SplashView(),
    );
  }
}

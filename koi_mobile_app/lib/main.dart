import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/home.dart';
import 'package:koi_mobile_app/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

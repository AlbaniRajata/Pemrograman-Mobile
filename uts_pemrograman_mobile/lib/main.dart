import 'package:flutter/material.dart';
import 'loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan debug banner
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const LoadingPage(),
    );
  }
}
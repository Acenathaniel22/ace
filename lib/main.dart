import 'package:flutter/material.dart';
import 'pages/List_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Listitems(), debugShowCheckedModeBanner: false);
  }
}

import 'package:flutter/material.dart';
import 'pages/List_items.dart';
import 'pages/Newroutine.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Listitems(),
        '/newroutine': (context) => const NewRoutine(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'Worldtime/hometime.dart';
import 'Worldtime/loading.dart';
import 'Worldtime/choose_location.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ),
  );
}

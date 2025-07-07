import 'package:flutter/material.dart';
import 'Worldtime/choose_location.dart';
import 'Worldtime/hometime.dart';
import 'Worldtime/loading.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      routes: {
        '/': (context) => const Loading(),
        'home': (context) => const Home(),
      },
    ),
  );
}

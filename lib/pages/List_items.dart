import 'package:flutter/material.dart';
import 'Routine.dart';
import 'Item_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {
  List<Routine> routine = [
    Routine(name: 'Push-ups', description: 'Basic push-ups', reps: '10'),
    Routine(name: 'Squats', description: 'Body weight squats', reps: '15'),
    Routine(
      name: 'Plank',
      description: 'Hold plank position',
      reps: '30 seconds',
    ),
    Routine(name: 'Lunges', description: 'Forward lunges', reps: '12 each leg'),
    Routine(name: 'Burpees', description: 'Full body exercise', reps: '8'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Workout Routine',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: routine.map((work) {
          return Itemcard(routine: work);
        }).toList(),
      ),
    );
  }
}

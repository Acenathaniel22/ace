import 'package:flutter/material.dart';
import 'Routine.dart';
import 'package:google_fonts/google_fonts.dart';

class Itemcard extends StatelessWidget {
  final Routine routine;
  const Itemcard({super.key, required this.routine});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          child: Icon(
            _getExerciseIcon(routine.name),
            color: Colors.blue.shade600,
          ),
        ),
        title: Text(
          routine.name,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(routine.description, style: GoogleFonts.poppins()),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            routine.reps.toString(),
            style: GoogleFonts.poppins(
              color: Colors.blue.shade700,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  IconData _getExerciseIcon(String exerciseName) {
    switch (exerciseName.toLowerCase()) {
      case 'push-ups':
        return Icons.fitness_center;
      case 'squats':
        return Icons.accessibility_new;
      case 'plank':
        return Icons.straighten;
      default:
        return Icons.sports_gymnastics;
    }
  }
}

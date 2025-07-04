import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeRoutine {
  final String name;
  final String description;
  final String reps;
  final IconData icon;
  const HomeRoutine({
    required this.name,
    required this.description,
    required this.reps,
    required this.icon,
  });
}

class GymDashboard extends StatelessWidget {
  const GymDashboard({super.key});

  final List<HomeRoutine> morningRoutine = const [
    HomeRoutine(
      name: 'Push-ups',
      description: 'Basic push-ups',
      reps: '10',
      icon: Icons.fitness_center,
    ),
    HomeRoutine(
      name: 'Squats',
      description: 'Body weight squats',
      reps: '15',
      icon: Icons.accessibility_new,
    ),
    HomeRoutine(
      name: 'Plank',
      description: 'Hold plank position',
      reps: '30 seconds',
      icon: Icons.straighten,
    ),
  ];

  final List<HomeRoutine> nightRoutine = const [
    HomeRoutine(
      name: 'Lunges',
      description: 'Forward lunges',
      reps: '12 each leg',
      icon: Icons.sports_gymnastics,
    ),
    HomeRoutine(
      name: 'Burpees',
      description: 'Full body exercise',
      reps: '8',
      icon: Icons.sports_gymnastics,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFDF1FF),
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Welcome back, ACE!",
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Today's Focus: Full Body Routine",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 30),
          _sectionTitle("Morning Session"),
          ...morningRoutine.map((item) => _RoutineCard(routine: item)),
          const SizedBox(height: 30),
          _sectionTitle("Night Session"),
          ...nightRoutine.map((item) => _RoutineCard(routine: item)),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
      child: Text(
        title.toUpperCase(),
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}

class _RoutineCard extends StatelessWidget {
  final HomeRoutine routine;
  const _RoutineCard({required this.routine});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      color: const Color(0xFFF8F6FA),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(routine.icon, color: Colors.blue, size: 28),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    routine.name,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    routine.description,
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                routine.reps,
                style: GoogleFonts.poppins(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

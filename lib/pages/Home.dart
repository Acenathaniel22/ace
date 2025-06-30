import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const GymDashboardApp());
}

class GymDashboardApp extends StatelessWidget {
  const GymDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Routine Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF181818),
        textTheme: GoogleFonts.robotoCondensedTextTheme(
          ThemeData.dark().textTheme,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        colorScheme: const ColorScheme.dark().copyWith(
          primary: Color(0xFFFF2D2D),
        ),
      ),
      home: const GymDashboard(),
    );
  }
}

class GymDashboard extends StatelessWidget {
  const GymDashboard({super.key});

  final List<Map<String, dynamic>> morningRoutine = const [
    {'label': "Warm-up: 10 min treadmill", 'icon': Icons.directions_run},
    {'label': "Pushups - 3 Sets", 'icon': Icons.push_pin},
    {'label': "Chest Press - 4 Sets", 'icon': Icons.fitness_center},
  ];

  final List<Map<String, dynamic>> nightRoutine = const [
    {'label': "Squats - 4 Sets", 'icon': Icons.directions_walk},
    {'label': "Planks - 3 Sets", 'icon': Icons.accessibility},
    {'label': "Stretching - 10 min", 'icon': Icons.self_improvement},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DAILY GYM ROUTINE',
          style: GoogleFonts.robotoCondensed(
            color: const Color(0xFFFF2D2D),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Welcome back, ACE!",
            style: GoogleFonts.robotoCondensed(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Today's Focus: Full Body Routine",
            style: GoogleFonts.robotoCondensed(
              fontSize: 16,
              color: const Color(0xFFFF2D2D),
            ),
          ),
          const SizedBox(height: 30),

          _sectionTitle("Morning Session"),
          ...morningRoutine.map(
            (item) => RoutineTile(label: item['label'], icon: item['icon']),
          ),

          const SizedBox(height: 30),

          _sectionTitle("Night Session"),
          ...nightRoutine.map(
            (item) => RoutineTile(label: item['label'], icon: item['icon']),
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title.toUpperCase(),
      style: GoogleFonts.robotoCondensed(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: const Color(0xFFFF2D2D),
        letterSpacing: 1.5,
      ),
    );
  }
}

class RoutineTile extends StatelessWidget {
  final String label;
  final IconData icon;

  const RoutineTile({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFFF2D2D), width: 1.2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 6,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 26),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.robotoCondensed(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

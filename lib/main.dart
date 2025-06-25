import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF121212), // Dark background
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text(
            'PERSONAL INFORMATION',
            style: GoogleFonts.bebasNeue(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              color: const Color(0xFFFF2D2D),
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.8),
                  blurRadius: 4,
                  offset: const Offset(2, 2),
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 👤 Centered user profile icon
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[800],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Info sections stacked vertically
              infoBlock("NAME", "ACE NATHANIEL"),
              infoBlock("EMAIL", "ace@example.com"),
              infoBlock("COMPANY", "RedFit Corporation Inc."),
              infoBlock("CONTACT", "+63 912 345 6789"),
            ],
          ),
        ),
      ),
    ),
  );
}

// Combined block: label + value with aligned card styling
Widget infoBlock(String label, String value) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 8),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    decoration: BoxDecoration(
      color: const Color(0xFF1E1E1E),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: const Color(0xFFFF2D2D).withOpacity(0.7),
        width: 1.2,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.bebasNeue(
            color: Colors.white70,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: GoogleFonts.bebasNeue(
            color: const Color(0xFFFF2D2D),
            fontSize: 20,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.5,
          ),
        ),
      ],
    ),
  );
}

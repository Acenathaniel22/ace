import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // ← Added

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF121212), // Dark charcoal background
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text(
            'PERSONAL INFORMATION',
            style: GoogleFonts.bebasNeue( // ← Updated font
              fontSize: 20,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              color: Color(0xFFFF2D2D), // Vibrant red
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.8),
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Name Section
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E), // Dark container
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFFFF2D2D).withOpacity(0.7), width: 1.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  children: [
                    Text('NAME',
                      style: GoogleFonts.bebasNeue( // ← Updated font
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('ACE NATHANIEL',
                      style: GoogleFonts.bebasNeue( // ← Updated font
                        color: Color(0xFFFF2D2D), // Primary red
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ),

              // Age Section
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFFFF2D2D).withOpacity(0.7), width: 1.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('AGE',
                      style: GoogleFonts.bebasNeue( // ← Updated font
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text('21',
                        style: GoogleFonts.bebasNeue( // ← Updated font
                          color: Color(0xFFFF5E5E), // Lighter red
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Gender Section
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFFFF2D2D).withOpacity(0.7), width: 1.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('GENDER',
                      style: GoogleFonts.bebasNeue( // ← Updated font
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text('MALE',
                        style: GoogleFonts.bebasNeue( // ← Updated font
                          color: Color(0xFFFF8E8E), // Lightest red
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

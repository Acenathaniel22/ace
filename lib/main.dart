import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fitness Tracker',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              letterSpacing: 1.5,
            ),
          ),
          backgroundColor: Colors.pinkAccent[100],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'POWER PROGRESS',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.pinkAccent[200],
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.5,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Text(
                'POWER PROGRESS',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.pinkAccent[200],
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.5,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Text(
                'POWER PROGRESS',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.pinkAccent[200],
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.5,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
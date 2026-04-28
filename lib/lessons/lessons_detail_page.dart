import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonsDetailPage extends StatefulWidget {
  const LessonsDetailPage({super.key});

  @override
  State<LessonsDetailPage> createState() {
    return _LessonsDetailPage();
  }
}

class _LessonsDetailPage extends State<LessonsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF008DDA),
      appBar: AppBar(
        title: Text(
          'Lesson 1',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What is Stock?',
                style: GoogleFonts.openSans(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Text(
                  'A stock is a certificate of ownership in a corporation that represents a claim on part of the company’s assets and earnings.',
                  style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

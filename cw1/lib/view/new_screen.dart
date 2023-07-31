import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.name, required this.myColor2});

  final String name;
  final Color myColor2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor2,
      appBar: AppBar(),
      body: Center(
          child: Text(
        name,
        style: GoogleFonts.mada(fontWeight: FontWeight.bold, fontSize: 30),
      )),
    );
  }
}

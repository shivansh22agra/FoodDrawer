import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class confirm_screen extends StatelessWidget {
  static String id = "/confirm_screen";
  const confirm_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF332F2F),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset('assets/images/orderPlaced.gif'),
          Text(
            'Estimated time:  15 min',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Total:   ₹184',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 24),
              ),
            ],
          ),
          SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Thank you! \n Visit again!',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 32),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

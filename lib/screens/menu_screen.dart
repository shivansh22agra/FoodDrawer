import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatelessWidget {
  static String id = "/MenuScreen";
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF332F2F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: Image.asset(
              "assets/images/UpperImage.png",
              height: size.width * .3,
            ),
          ),
          Text('Choco burger',
          style: GoogleFonts.poppins(
            
          ),
        ),
          Center(
            child: Image.asset(
              "assets/images/downImage.png",
              height: size.width * .3,
            ),
          )
        ],
      ),
    );
  }
}

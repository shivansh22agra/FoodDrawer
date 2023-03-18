import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddrawer_app/customPageView.dart';
import 'package:fooddrawer_app/screens/Home_page.dart';
import 'package:fooddrawer_app/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen1 extends StatelessWidget {
  static String id = "/splashScreen1";
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgImage.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: size.height * 1,
          width: size.width * 1,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'logo',
                    child: Image.asset(
                      "assets/images/NewLogo.jpeg",
                      height: 250,
                      width: 250,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: size.width * 1,
                child: MaterialButton(
                  color: const Color(0xFFFF2F2F),
                  onPressed: () {
                    Navigator.pushNamed(context, CustomPageView.id);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.sp,
                        color: const Color(0xFFFFFFFF)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

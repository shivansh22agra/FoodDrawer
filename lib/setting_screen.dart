import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddrawer_app/constants.dart';
import 'package:fooddrawer_app/screens/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../customPageView.dart';

// ignore: camel_case_types
class setting_screen extends StatelessWidget {
  static String id = "/setting_screen";
  const setting_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF332F2F),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) => CustomPageView(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_sharp,
                    ),
                    label: Text(''),
                  ),
                  Text(
                    "Setting",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 32,
                      color: const Color(0xFFEEEEEE),
                    ),
                  ),
                  // SizedBox(
                  //   width: 30,
                  // ),
                  Image.asset(
                    'assets/images/logoo.png',
                    height: 93,
                    width: 96,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF3E3c3c)),
                height: 550,
                width: 450,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        color: Color(0xFF332F2F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "My Cart",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: const Color(0xFFEEEEEE),
                          ),
                        ),
                        height: 50,
                        minWidth: 300,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        color: Color(0xFF332F2F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "Orders",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: const Color(0xFFEEEEEE),
                          ),
                        ),
                        height: 50,
                        minWidth: 300,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        color: Color(0xFF332F2F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "Edit Profile",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: const Color(0xFFEEEEEE),
                          ),
                        ),
                        height: 50,
                        minWidth: 300,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ProfileScreen(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        color: Color(0xFF332F2F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "Theme",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: const Color(0xFFEEEEEE),
                          ),
                        ),
                        height: 50,
                        minWidth: 300,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        color: Color(0xFF332F2F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "Wallet(Coming Soon)",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            color: const Color(0xFFEEEEEE),
                          ),
                        ),
                        height: 50,
                        minWidth: 300,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: MaterialButton(
                          color: Color(0xFF3E3C3C),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CustomPageView(),
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Text(
                              "Logout",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
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
}

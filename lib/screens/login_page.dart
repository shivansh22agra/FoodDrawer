import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddrawer_app/customPageView.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  static String id = "/loginScreen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 26),
                  height: 300,
                  child: Image.asset("assets/images/logoo.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(
                    "Register",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: const Color(0xFFFF2F2F),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white),
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white),
                    labelStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    fillColor: Color(0xFF1E1E1E),
                    filled: true,
                    hintText: "Username",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color(0xFFFF2F2F), width: 3.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color(0xFFFF2F2F), width: 3.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFFF2F2F), width: 3.w),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color(0xFFFF2F2F), width: 3.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white),
                  decoration: InputDecoration(
                      hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      fillColor: Color(0xFF1E1E1E),
                      filled: true,
                      hintText: "University mail ID",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFFF2F2F), width: 3.w),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFFF2F2F), width: 3.w),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xFFFF2F2F), width: 3.w),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFFF2F2F), width: 3.w),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white),
                  decoration: InputDecoration(
                      hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      fillColor: Color(0xFF1E1E1E),
                      filled: true,
                      hintText: "Phone number",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFFF2F2F), width: 3.w),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFFF2F2F), width: 3.w),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xFFFF2F2F), width: 3.w),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFFF2F2F), width: 3.w),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white),
                  decoration: InputDecoration(
                      hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 40),
                      fillColor: Color(0xFF1E1E1E),
                      filled: true,
                      hintText: "University mail ID",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFFF2F2F), width: 3.w),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFFF2F2F), width: 3.w),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xFFFF2F2F), width: 3.w),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFFF2F2F), width: 3.w),
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  color: const Color(0xFFFF2F2F),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => CustomPageView(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFDBDFEC),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFDBDFEC),
          centerTitle: true,
          title: Text('Filters',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 22.sp,
                  color: const Color(0xFF000000)))),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 22.sp,
                        color: const Color(0xFF000000))),
                Text('Clear all',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: const Color(0xFF000000))),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SizedBox(
              width: size.width * 1,
              child: Wrap(
                spacing: 10,
                runSpacing: 5,
                children: [
                  for (int i = 0; i < 10; i++)
                    ActionChip(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 9),
                        backgroundColor: Colors.white,
                        disabledColor: Colors.white,
                        label: Text('allll',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp,
                                color: const Color(0xFF000000)))),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dietary',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 22.sp,
                        color: const Color(0xFF000000))),
                Text('Clear all',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: const Color(0xFF000000))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SizedBox(
              width: size.width * 1,
              child: Wrap(
                spacing: 10,
                runSpacing: 5,
                children: [
                  for (int i = 0; i < 10; i++)
                    ActionChip(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 9),
                        backgroundColor: Colors.white,
                        disabledColor: Colors.white,
                        label: Text('Veg',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp,
                                color: const Color(0xFF000000)))),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price Range',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 22.sp,
                        color: const Color(0xFF000000))),
                Text('Clear all',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: const Color(0xFF000000))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SizedBox(
              width: size.width * 1,
              child: Wrap(
                spacing: 10,
                runSpacing: 5,
                children: [
                  for (int i = 0; i < 10; i++)
                    ActionChip(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 9),
                        backgroundColor: Colors.white,
                        disabledColor: Colors.white,
                        label: Text('0-149',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp,
                                color: const Color(0xFF000000)))),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                elevation: 0,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5),
                color: const Color(0xFF332F2F),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {},
                child: Text(
                  'Apply',
                  style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

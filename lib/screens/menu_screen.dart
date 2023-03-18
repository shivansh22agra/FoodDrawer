import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddrawer_app/screens/food_single.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatelessWidget {
  String restaurantName = "";
  static String id = "/MenuScreen";
  MenuScreen({
    required
    this.restaurantName});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF332F2F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Center(
            child: Text(
              'Choco burger',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 26.sp,
                  color: const Color(0xFFEEEEEE)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Menu',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w200,
                      fontSize: 26.sp,
                      color: const Color(0xFFFFFFFF)),
                ),
                const SizedBox(
                  height: 10,
                ),
                for (int i = 0; i < 3; i++)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, FoodScreen.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Material(
                        elevation: 20,
                        borderRadius: BorderRadius.circular(13.r),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.r),
                            color: const Color(0xFF3F3737),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 10.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Coco Burger',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16.sp,
                                              color: const Color(0xFFEEEEEE)),
                                        ),
                                        Image.asset(
                                          "assets/images/veg.jpeg",
                                          height: 20,
                                        )
                                      ],
                                    ),
                                    Image.asset("assets/images/burger.png")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              ],
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

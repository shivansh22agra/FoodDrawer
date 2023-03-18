import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodScreen extends StatelessWidget {
  static String id = "/FoodScreen";
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height * 1,
        width: size.width * 1,
        child: Stack(
          children: [
            Container(
              height: size.height * 1,
              width: size.width * 1,
              decoration: const BoxDecoration(
                color: Color(0xFF332F2F),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * .7,
                width: size.width * 1,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(90),
                        topRight: Radius.circular(90)),
                    color: Color(0xFFEBC3C3)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 70.h,
                      ),
                      Text(
                        'Cheese burger',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 22.sp,
                            color: const Color(0xFF000000)),
                      ),
                      RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemSize: 15,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        'Details',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                            color: const Color(0xFF000000)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'A sandwich consisting of one or more cooked beef patties, placed inside a sliced bread roll or bun roll with added cheeze.',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: const Color(0xFF000000)),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        'Price',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800,
                            fontSize: 22.sp,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        '₹ 85/-',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 22.sp,
                            color: const Color(0xFF000000)),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: size.width * .42,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9.r),
                                side: BorderSide(
                                  width: 3.w,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                              color: const Color(0xFFEC7D7D),
                              onPressed: () {},
                              padding: EdgeInsets.symmetric(vertical: 7.h),
                              child: Text(
                                'Add to Cart',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.sp,
                                    color: const Color(0xFF000000)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * .42,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9.r),
                                side: BorderSide(
                                  width: 3.w,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                              color: const Color(0xFFEC7D7D),
                              onPressed: () {},
                              padding: EdgeInsets.symmetric(vertical: 7.h),
                              child: Text(
                                'BUY NOW',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.sp,
                                    color: const Color(0xFF000000)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 100,
              left: 100,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                  "assets/images/burgerImage.png",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

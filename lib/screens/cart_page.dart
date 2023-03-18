import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xFF332F2F),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Item Cart',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24.sp,
                        color: const Color(0xFFFFFFFF)),
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: const Color(0xFFFFFFFF)),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 70.h,
                width: size.width * .9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(1, 1),
                          blurRadius: 21,
                          spreadRadius: -3)
                    ]),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: .3,
                      child: Image.asset(
                        "assets/images/burgerBg.png",
                        width: size.width * .9,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/images/burgerImage.png",
                            height: 50.h,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Foods',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: const Color(0xFF03F991),
                              ),
                            ),
                            Text(
                              'Cheese Burger',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: const Color(0xFFEEEEEE),
                              ),
                            ),
                            Text(
                              '₹ 85/-',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: const Color(0xFFF59797),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10))),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    width: 15.w,
                                    height: 2.w,
                                    color: const Color(0xFF000000),
                                  ),
                                )),
                            const Spacer(),
                            Text(
                              '2',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            const Spacer(),
                            Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10))),
                                child: const Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Icon(Icons.add,
                                        color: Color(0xFF000000)))),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

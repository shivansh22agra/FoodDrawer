import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddrawer_app/constants.dart';
import 'package:rive/rive.dart';

class CustomPageView extends StatelessWidget {
  static String id = "/customPageView";
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12.sp),
          margin: EdgeInsets.symmetric(horizontal: 24.sp),
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(24.r)),
          child: Row(
            children: [
              SizedBox(
                height: 30.h,
                width: 30.w,
                child: const RiveAnimation.asset(
                  "assets/icons.riv",
                  artboard: "HOME",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

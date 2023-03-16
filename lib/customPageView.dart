import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddrawer_app/constants.dart';
import 'package:fooddrawer_app/rive_utils.dart';
import 'package:rive/rive.dart';

class CustomPageView extends StatefulWidget {
  static String id = "/customPageView";
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  // Rive Rive = Rive();
  List<Rive> bottomIcons = [
    Rive(
        artboard: "HOME",
        stateMachineName: "HOME_interactivity",
        title: "Home"),
    Rive(
        artboard: "SEARCH",
        stateMachineName: "SEARCH_Interactivity",
        title: "Search"),
    Rive(
        artboard: "SETTINGS",
        stateMachineName: "SETTINGS_Interactivity",
        title: "SETTINGS"),
    Rive(
        artboard: "USER",
        stateMachineName: "USER_Interactivity",
        title: "USER"),
  ];
  @override
  Widget build(BuildContext context) {
    print(bottomIcons.length + 1);
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12.sp),
          margin: EdgeInsets.symmetric(horizontal: 24.sp),
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(24.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(bottomIcons.length, (index) {
                return GestureDetector(
                  onTap: () {
                    print(bottomIcons[index].input?.value);
                    bottomIcons[index].input?.change(true);
                    Future.delayed(const Duration(seconds: 1), () {
                      bottomIcons[index].input?.change(false);
                    });

                    setState(() {});
                  },
                  child: SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: RiveAnimation.asset(
                      "assets/allIcons.riv",
                      artboard: bottomIcons[index].artboard,
                      onInit: (artboard) {
                        StateMachineController? controller =
                            Riveutils.getRiveController(artboard,
                                bottomIcons[index].stateMachineName.toString());
                        bottomIcons[index].input =
                            controller?.findSMI("active");
                      },
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

class Rive {
  String artboard;
  String stateMachineName;
  String title;
  SMIBool? input;

  Rive(
      {this.artboard = "",
      this.stateMachineName = "",
      this.title = "",
      this.input});
  set setInput(SMIBool status) {
    input = status;
  }
}

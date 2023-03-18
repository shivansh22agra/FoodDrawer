import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddrawer_app/constants.dart';
import 'package:fooddrawer_app/rive_utils.dart';
import 'package:fooddrawer_app/screens/cart_page.dart';
import 'package:fooddrawer_app/screens/home_page.dart';
import 'package:fooddrawer_app/screens/profile_page.dart';
import 'package:fooddrawer_app/screens/search_page.dart';
import 'package:rive/rive.dart';

class CustomPageView extends StatefulWidget {
  static String id = "/customPageView";
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  int SelectectBottomIndex = 0;
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 1);
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
      backgroundColor: const Color(0xFF332F2F),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              HomeScreen(),
              SearchScreen(),
              CartScreen(),
              ProfileScreen()
            ],
          ),
          Positioned(
            bottom: 20.h,
            left: 20.w,
            right: 20.w,
            child: SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(12.sp),
                decoration: BoxDecoration(
                    color: bgColor, borderRadius: BorderRadius.circular(24.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(bottomIcons.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          SelectectBottomIndex = index;
                          print(bottomIcons[index].input?.value);
                          bottomIcons[index].input?.change(true);
                          Future.delayed(const Duration(seconds: 1), () {
                            bottomIcons[index].input?.change(false);
                          });
                          pageController.animateToPage(
                            index,
                            curve: Curves.easeInOut,
                            duration: const Duration(milliseconds: 500),
                          );

                          setState(() {});
                        },
                        child: SizedBox(
                          height: 30.h,
                          width: 30.w,
                          child: Opacity(
                            opacity: SelectectBottomIndex == index ? 1 : 0.5,
                            child: RiveAnimation.asset(
                              "assets/allIcons.riv",
                              artboard: bottomIcons[index].artboard,
                              onInit: (artboard) {
                                StateMachineController? controller =
                                    Riveutils.getRiveController(
                                        artboard,
                                        bottomIcons[index]
                                            .stateMachineName
                                            .toString());
                                bottomIcons[index].input =
                                    controller?.findSMI("active");
                              },
                            ),
                          ),
                        ),
                      );
                    })
                  ],
                ),
              ),
            ),
          ),
        ],
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

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddrawer_app/models/menu_model.dart';
import 'package:fooddrawer_app/screens/food_single.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class MenuScreen extends StatefulWidget {
  String restaurantName = "";
  static String id = "/MenuScreen";
  MenuScreen({required this.restaurantName});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isloading = false;
  List<Menu> menu = [];
  void fetchMenu() async {
    isloading = true;
    setState(() {});
    var response = await http.get(Uri.parse('http://10.0.2.2:5000/api/menu/'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(
          'data ${data['data'][0]['restaurantName']} ${widget.restaurantName}');
      for (int i = 0; i < data['data'].length; i++) {
        if (data['data'][i]['restaurantName'] ==
            widget.restaurantName.toString()) {
          menu.add(Menu.fromJson(data['data'][i]));
        }
      }
      print('menu ${menu[0].name}');
    }
    isloading = false;

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchMenu();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF332F2F),
      body: isloading
          ? Container(
              height: size.height * 1,
              width: size.width * 1,
              child: const Center(child: CircularProgressIndicator()))
          : SingleChildScrollView(
              child: Column(
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
                      widget.restaurantName.toString(),
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
                        for (int i = 0; i < menu.length; i++)
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  menu[i].name.toString(),
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xFFEEEEEE)),
                                                ),
                                                Image.asset(
                                                  "assets/images/veg.jpeg",
                                                  height: 20,
                                                )
                                              ],
                                            ),
                                            Image.network(
                                              menu[i].image.toString(),
                                              height: 40.h,
                                            )
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
            ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddrawer_app/models/restaurant_model.dart';
import 'package:fooddrawer_app/screens/menu_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  static String id = "/HomeScreen";

  String userName = "Moyan";
  HomeScreen({this.userName = ""});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isloading = false;
  void fetchResturant() async {
    isloading = false;
    setState(() {});
    print('s');
    var response =
        await http.get(Uri.parse('http://10.0.2.2:5000/api/restaurant/'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print('Restaurant ${data}');
      for (int i = 0; i < data['data'].length; i++) {
        restaurant.add(Restaurant.fromJson(data['data'][i]));
      }
    }
    // print('Restaurant ${restaurant[0].image.toString()}');
    isloading = false;

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchResturant();
  }

  List<Restaurant> restaurant = [];
  List<String> types = ['Foods', 'Drinks', 'Extras'];
  List<bool> foodTypeBoolean = [false, false, false];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF332F2F),
      body: SingleChildScrollView(
        child: isloading
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/logoo.png",
                          height: size.height * .1,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hi ',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22.sp,
                                      color: const Color(0xFFFFFFFF)),
                                ),
                                Text(
                                  'Moyan',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22.sp,
                                      color: const Color(0xFFFFFFFF)),
                                ),
                              ],
                            ),
                            // Text(
                            //   'FID- ##########',
                            //   style: GoogleFonts.poppins(
                            //       fontWeight: FontWeight.w300,
                            //       fontSize: 18.sp,
                            //       color: const Color(0xFFFFFFFF)),
                            // ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xFF332F2F),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1.w, color: const Color(0xFFADADAD))),
                        contentPadding: const EdgeInsets.symmetric(vertical: 7),
                        fillColor: const Color(0xFFEFEFEF),
                        filled: true,
                        hintText: 'Find your item',
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp,
                            color: const Color(0xFF696161)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int i = 0; i < 3; i++)
                          GestureDetector(
                            onTap: () {
                              foodTypeBoolean = List.filled(3, false);
                              foodTypeBoolean[i] = true;
                              setState(() {});
                            },
                            child: Chip(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 2),
                                backgroundColor: foodTypeBoolean[i]
                                    ? const Color(0xFF03F991)
                                    : Colors.white,
                                avatar: const Icon(
                                  Icons.food_bank_outlined,
                                  color: Color(0xFF000000),
                                ),
                                label: Text(
                                  types[i],
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18.sp,
                                    color: const Color(0xFF000000),
                                  ),
                                )),
                          )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 22.sp,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        Text(
                          'Show all',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 18.sp,
                            color: const Color(0xFFFFFFFF),
                          ),
                        )
                      ],
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10.h),
                      itemCount: restaurant.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MenuScreen(
                                        restaurantName:
                                            restaurant[index].name ?? "")));
                          },
                          child: Container(
                            height: size.height * 0.27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    restaurant[index].image.toString(),
                                    fit: BoxFit.cover,
                                    height: size.height * 0.27,
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        restaurant[index].name.toString(),
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp,
                                            color: const Color(0xFFFFFFFF)),
                                      ),
                                      RatingBar.builder(
                                        initialRating: 3,
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
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

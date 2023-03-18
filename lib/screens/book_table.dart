import 'package:flutter/material.dart';
import 'package:fooddrawer_app/customPageView.dart';
import 'package:google_fonts/google_fonts.dart';

class book_table extends StatefulWidget {
  static String id = "/book_table";
  const book_table({super.key});

  @override
  State<book_table> createState() => _book_tableState();
}

class _book_tableState extends State<book_table> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xFF332F2F),
        // body: Column(
        //   children: [
        //     SizedBox(
        //       height: 30,
        //     ),
        //     Row(
        //       children: [
        //         TextButton.icon(
        //           onPressed: () {
        //             Navigator.of(context).pushReplacement(
        //               MaterialPageRoute(
        //                 builder: (BuildContext context) => CustomPageView(),
        //               ),
        //             );
        //           },
        //           icon: Icon(Icons.arrow_back_ios_sharp),
        //           label: Text(''),
        //         ),
        //         SizedBox(
        //           width: 50,
        //         ),
        //         Text(
        //           'Book Table',
        //           style: GoogleFonts.poppins(
        //               fontWeight: FontWeight.w400,
        //               fontSize: 32,
        //               color: Colors.white),
        //         ),
        //       ],
        //     ),
        //     Material(
        //       elevation: 20,
        //       borderRadius: BorderRadius.circular(13.r),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(13.r),
        //           color: const Color(0xFF3F3737),
        //         ),
        //         child: Padding(
        //           padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               Row(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text(
        //                         'Coco Burger',
        //                         style: GoogleFonts.poppins(
        //                             fontWeight: FontWeight.w400,
        //                             fontSize: 16.sp,
        //                             color: const Color(0xFFEEEEEE)),
        //                       ),
        //                       Image.asset(
        //                         "assets/images/veg.jpeg",
        //                         height: 20,
        //                       )
        //                     ],
        //                   ),
        //                   Image.asset("assets/images/burger.png")
        //                 ],
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddrawer_app/customPageView.dart';
import 'package:fooddrawer_app/screens/Home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) =>  MaterialApp(
          debugShowCheckedModeBanner: false,
              initialRoute: CustomPageView.id,
              routes: {
                CustomPageView.id:(context)=> CustomPageView(),
                HomeScreen.id:(context)=> HomeScreen(),
                
              },
            ));
  }
}

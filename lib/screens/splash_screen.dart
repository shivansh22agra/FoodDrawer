import "package:flutter/material.dart";
import "package:fooddrawer_app/screens/spash_screen1.dart";

class SplashScreen extends StatefulWidget {
  static String id = "/splashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
       Navigator.pushNamed(context, SplashScreen1.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Hero(
              tag: 'logo',
              child: Image.asset(
                      "assets/images/Foodrawerrr.gif",
                      height: 300,
                    ),
            )));
  }
}

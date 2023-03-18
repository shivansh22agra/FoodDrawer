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
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgImage.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: size.height * 15,
          width: size.width * 1,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
        ),
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Foodrawerrr.gif",
                    height: 250,
                    width: 250,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

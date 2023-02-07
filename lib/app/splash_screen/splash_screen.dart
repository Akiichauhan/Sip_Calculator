import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sip_calculator/app/screens/language/my_lenguage.dart';

import '../const/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

//splash screen
//https://www.youtube.com/watch?v=jATox3OCefw

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
          child: Column(
            children: [
              Text(
                "SIP Calculator",
                //caveat
                style: GoogleFonts.righteous(
                    fontSize: 30.0,
                    letterSpacing: 6.0,
                    color: const Color.fromARGB(255, 246, 246, 246)),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //      Image.asset("assets/images/stock_splash.png")
            ],
          ),
        ),
        nextScreen: const MyLanguage(),
        splashTransition: SplashTransition.decoratedBoxTransition,
        //  splashTransition: SplashTransition.fadeTransition,
        //splashTransition: SplashTransition.scaleTransition,

        backgroundColor: AppColors.bottomNavigatorselectIconColor,
        duration: 3000,
      ),
    );
  }
}

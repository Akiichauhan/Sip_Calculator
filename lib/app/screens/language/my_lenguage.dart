import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sip_calculator/app/appbar/other_appbar.dart';

import '../../const/colors.dart';

class MyLanguage extends StatelessWidget {
  const MyLanguage({super.key});

//https://www.youtube.com/watch?v=o78o82F3cl0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherAppbar(
        // myColor: AppColors.whiteColor,
        title: "Chose Language",
        centerTitle: true,
        style: GoogleFonts.roboto(
          //  color: AppColors.whiteColor,
          color: AppColors.whiteColor,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: _container(
              "English",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: _container(
              "Hindi",
            ),
          ),
        ],
      ),

      // ptmono fonts

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text:
                        "By continuing ahead, you certify you are more then 17 years\nold, you have read and you agree to\n",
                    style: GoogleFonts.actor(
                      fontSize: 12.0,
                      color: AppColors.languagebottomTextColor,
                    ),
                  ),
                  TextSpan(
                    text: "Privacy Policy ",
                    style: GoogleFonts.actor(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      color: AppColors.languageBottmRitchColor,
                    ),
                  ),
                  TextSpan(
                    text: "and ",
                    style: GoogleFonts.actor(
                      fontSize: 12.0,
                      color: AppColors.languagebottomTextColor,
                    ),
                  ),
                  TextSpan(
                    text: "Terms of Use",
                    style: GoogleFonts.actor(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.languageBottmRitchColor,
                    ),
                  ),
                ]))
          ],
        ),
      ),
    );
  }

  Widget _container(String mytext) {
    void Function()? onTap;
    return InkWell(
      onTap: () {
        onTap;
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 40.0,
            width: 120.0,
            decoration: BoxDecoration(
              color: AppColors.lenguageAppbarColor,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Text(
              mytext,
              style: GoogleFonts.roboto(
                color: AppColors.dashbourdSipColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

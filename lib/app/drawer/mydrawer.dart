import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sip_calculator/app/drawer/all_pages/pages/feature_request.dart';
import 'package:sip_calculator/app/drawer/all_pages/pages/problems.dart';
import 'package:sip_calculator/app/screens/dashbourd/dashbourd.dart';
import 'package:sip_calculator/app/screens/language/my_lenguage.dart';

import '../const/colors.dart';
import '../widgets/mystring.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 120,
            color: AppColors.drawerContainerBGColor,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  MyString(
                    myText: "SIP Calculator",
                    style: GoogleFonts.roboto(
                      fontSize: 20.0,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  MyString(
                    myText: "Powered by Fund Easy",
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                onTap: () => Get.to(const Dashbourd()),
                leading: const Icon(
                  Icons.home,
                  color: AppColors.drawerContainerBGColor,
                ),
                title: MyString(
                  myText: "Home",
                  style: GoogleFonts.roboto(
                    color: AppColors.drawerContainerBGColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () => Get.to(
                  const Problems(),
                ),
                leading: const Icon(
                  Icons.chat_rounded,
                  color: AppColors.drawerContainerBGColor,
                ),
                title: MyString(
                  myText: "Problem?",
                  style: GoogleFonts.roboto(
                    color: AppColors.drawerContainerBGColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () => Get.to(
                  const FeatureRequest(),
                ),
                leading: const Icon(
                  Icons.language,
                  color: AppColors.drawerContainerBGColor,
                ),
                title: MyString(
                  myText: "Featured Request",
                  style: GoogleFonts.roboto(
                    color: AppColors.drawerContainerBGColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () => Get.to(
                  const MyLanguage(),
                ),
                leading: const Icon(
                  Icons.translate,
                  color: AppColors.drawerContainerBGColor,
                ),
                title: MyString(
                  myText: "Change Language",
                  style: GoogleFonts.roboto(
                    color: AppColors.drawerContainerBGColor,
                  ),
                ),
              ),
              ListTile(
                onTap: () => Get.to(
                  const MyLanguage(),
                ),
                leading: const Icon(
                  Icons.translate,
                  color: AppColors.drawerContainerBGColor,
                ),
                title: MyString(
                  myText: "More",
                  style: GoogleFonts.roboto(
                    color: AppColors.drawerContainerBGColor,
                  ),
                ),
              ),

              // terms of use
              // privacy policy
              //credit
            ],
          ),
        ],
      ),
    );
  }
}

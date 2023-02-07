import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sip_calculator/app/widgets/Icon_text_input.dart';
import 'package:sip_calculator/app/widgets/custom_btn.dart';

import '../const/colors.dart';
import '../widgets/mystring.dart';

class MyTab extends StatelessWidget {
  const MyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          color: AppColors.whiteColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.cookie_outlined,
                    color: AppColors.tabbarBorderColor,
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  MyString(
                    myText: "Monthly SIP Amount",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      color: AppColors.dashbourdSipColor,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: MyString(
                      myText: "What is SIP?",
                      style: GoogleFonts.roboto(
                        color: AppColors.PrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              IconInputText(
                obscureText: false,
                labelText: "labelText",
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.tabBarabColor,
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.tabbarBorderColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              MyString(
                myText: "Five Thousend",
                style: GoogleFonts.roboto(
                  color: AppColors.languagebottomTextColor,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.percent,
                    color: AppColors.tabbarBorderColor,
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  MyString(
                    myText: "Expected Gain % (Per Year)",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              IconInputText(
                obscureText: false,
                labelText: "labelText",
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.tabbarBorderColor,
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.tabBarabColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: AppColors.tabBarabColor,
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  MyString(
                    myText: "Sip Tenure",
                    style: GoogleFonts.roboto(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  MyString(
                    myText: "Years",
                    style: GoogleFonts.roboto(
                      color: AppColors.blackColor,
                      fontSize: 16.0,
                    ),
                  ),
                  MyString(
                    myText: "Years",
                    style: GoogleFonts.roboto(
                      color: AppColors.blackColor,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  MyString(
                    myText: "Steper",
                    style: GoogleFonts.roboto(
                      color: AppColors.appbarTitileColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  MyString(
                    myText: "Adjust for\n Inflation?",
                    style: GoogleFonts.roboto(
                      color: AppColors.tabBarabColor,
                    ),
                  ),
                  const SizedBox(
                    width: 70.0,
                  ),
                  UIButton(
                    width: 90.0,
                    height: 36.0,
                    color: AppColors.tabBarabColor,
                    labelText: "Calculate",
                    style: GoogleFonts.roboto(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

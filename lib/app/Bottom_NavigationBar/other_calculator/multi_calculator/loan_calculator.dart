import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sip_calculator/app/const/colors.dart';

import '../../../appbar/other_appbar.dart';
import '../../../widgets/Icon_text_input.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/mystring.dart';

class LoanCalculator extends StatefulWidget {
  const LoanCalculator({super.key});

  @override
  State<LoanCalculator> createState() => _LoanCalculatorState();
}

class _LoanCalculatorState extends State<LoanCalculator> {
  double values = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherAppbar(
        mainColor: AppColors.whiteColor,
        leading: const Icon(
          Icons.arrow_back,
        ),
        title: "Loan Calculator",
        style: GoogleFonts.roboto(
          color: AppColors.blackColor,
          fontSize: 18.0,
        ),
        myColor: AppColors.whiteColor,
        actions: [
          InkWell(
            onTap: () {
              Share.share('com.example.sip_calculator');
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.share,
                color: AppColors.appbarShareColor,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Container(
          padding: const EdgeInsets.all(10.0), child: _loanCalculate()),
    );
  }

  Widget _loanCalculate() {
    return SingleChildScrollView(
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
                myText: "Loan Amount",
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
                myText: "Interest (Per Year)",
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
                myText: "Tenure",
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
              Slider(
                // https://www.youtube.com/watch?v=vuw818gAlF8
                value: values,
                min: 0,
                max: 100,
                divisions: 100,
                activeColor: AppColors.tabbarBorderColor,
                inactiveColor: AppColors.tabbarBorderColor,
                onChanged: ((value) => setState(
                      () => values = value,
                    )),
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
              const SizedBox(
                width: 70.0,
              ),
              InkWell(
                onTap: () {},
                child: UIButton(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.06,
                  color: AppColors.tabBarabColor,
                  labelText: "Calculate",
                  style: GoogleFonts.roboto(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}

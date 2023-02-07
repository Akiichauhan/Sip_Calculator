import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
import 'Icon_text_input.dart';
import 'mystring.dart';

class Sip extends StatefulWidget {
  const Sip({super.key});

  @override
  State<Sip> createState() => _SipState();
}

class _SipState extends State<Sip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                _monthlySipAmount(),
                const SizedBox(
                  height: 20.0,
                ),
                _moneyTextBox(),
                const SizedBox(
                  height: 10.0,
                ),
                _mytext(),
                const SizedBox(
                  height: 20.0,
                ),
                _exceptedGain(),
                const SizedBox(
                  height: 10.0,
                ),
                _percentageTextBox(),
                const SizedBox(
                  height: 20.0,
                ),
                _sipTenure(),
                const SizedBox(
                  height: 10.0,
                ),
                _yearsTenurity(),
                const SizedBox(
                  height: 10.0,
                ),
                _adjustConform(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _monthlySipAmount() {
    return Row(
      children: [
        const Icon(
          Icons.food_bank,
          color: AppColors.dashbourdIconColor,
        ),
        const SizedBox(
          width: 10.0,
        ),
        MyString(
          myText: "Monthly SIP Amount",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            //  showAlert("msg");

            showDialog(
                context: context,
                builder: (ctx) => const AlertDialog(
                      title: Text("What is SIP?"),
                      content: Text(
                          "With many SIPWith many SIPWith many SIPWith many SIPWith many SIPWith many SIPWith many SIPWith many SIPWith many SIPWith many SIPWith many SIP"),
                    ));

            //
          },
          child: Container(
            alignment: Alignment.center,
            height: 40.0,
            width: 100,
            decoration: const BoxDecoration(
              color: AppColors.dashbourdSipColor,
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
            ),
            child: MyString(
              myText: "What is SIP?",
              style: GoogleFonts.roboto(
                color: AppColors.dashbourdSipTextColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _moneyTextBox() {
    return IconInputText(
      labelText: "Rs",
      //    color: AppColors.appbarGiftcolor,
      obscureText: false,
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.dashbourdSipTextColor,
          width: 2,
        ),
      ),
      //focusedBorder: ,
    );
  }

  Widget _mytext() {
    return MyString(
      style: GoogleFonts.roboto(),
      myText: "here Write that code",
    );
  }

  Widget _exceptedGain() {
    return Row(
      children: [
        const Icon(
          Icons.percent,
          color: AppColors.dashbourdIconColor,
        ),
        const SizedBox(
          width: 10.0,
        ),
        MyString(
          myText: "Expected Gain % (Per Year)",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  Widget _percentageTextBox() {
    return IconInputText(
      labelText: "Rs",
      //    color: AppColors.appbarGiftcolor,
      obscureText: false,
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.dashbourdSipTextColor,
          width: 2,
        ),
      ),
    );
  }

  Widget _sipTenure() {
    return Row(
      children: [
        const Icon(
          Icons.calendar_month,
          color: AppColors.dashbourdIconColor,
        ),
        const SizedBox(
          width: 10.0,
        ),
        MyString(
          myText: "Sip Tenure",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  Widget _yearsTenurity() {
    return Row(
      children: [
        const MyString(
          myText: "12",
        ),
        const SizedBox(
          width: 6.0,
        ),
        MyString(
          myText: "Years",
          style: GoogleFonts.roboto(
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  Widget _adjustConform() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          MyString(
            myText: "Adjust for \n Inflation",
            style: GoogleFonts.roboto(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: 90.0,
              decoration: const BoxDecoration(
                  color: AppColors.tabBarabColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: MyString(
                myText: "Calculate",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w800,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

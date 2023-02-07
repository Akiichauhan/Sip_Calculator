import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sip_calculator/app/const/colors.dart';

import '../../../appbar/other_appbar.dart';

class RDCalculator extends StatefulWidget {
  const RDCalculator({super.key});

  @override
  State<RDCalculator> createState() => _RDCalculatorState();
}

class _RDCalculatorState extends State<RDCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherAppbar(
        leading: const Icon(
          Icons.arrow_back,
        ),
        title: "RD Calculator",
        style: GoogleFonts.roboto(
          color: AppColors.blackColor,
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
    );
  }
}

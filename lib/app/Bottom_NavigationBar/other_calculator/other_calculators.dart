import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/multi_calculator/fd_calculator.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/multi_calculator/loan_calculator.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/multi_calculator/ppf_calculator.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/multi_calculator/rd_calculator.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/multi_calculator/sip_calculator.dart';
import 'package:sip_calculator/app/const/colors.dart';

import '../../appbar/other_appbar.dart';

class OtherCalculators extends StatefulWidget {
  const OtherCalculators({super.key});

  @override
  State<OtherCalculators> createState() => _OtherCalculatorsState();
}

class _OtherCalculatorsState extends State<OtherCalculators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherAppbar(
        mainColor: AppColors.whiteColor,
        leading: const Icon(
          Icons.arrow_back,
          color: AppColors.blackColor,
        ),
        title: "Other Calculator",
        myColor: AppColors.blackColor,
        style: GoogleFonts.roboto(
          color: AppColors.blackColor,
        ),
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
            width: 20.0,
          ),
        ],
      ),

      // backgroundColor: AppColors.dashbourdSipTextColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20,
          top: 40,
        ),
        child: BuildGridView(),
      ),
    );
  }
}

class BuildGridView extends StatelessWidget {
  List title = [
    'SecondScreen',
    'ThirdScreen',
    'SecondS',
    'SecondS',
    'SecondS',
  ];

  final List<String> images = [
    "assets/images/doller.png",
    "assets/images/ruppe.png",
    "assets/images/hand.png",
    "assets/images/coin.png",
    "assets/images/stock.png",
  ];

  List<Color> colors = [
    AppColors.cardfirstbg,
    AppColors.cardsecondbg,
    AppColors.cardthirdbg,
    AppColors.cardfourthbg,
    AppColors.cardfivebg,
  ];
  List<String> text = [
    'FD Calculator',
    'RD Calculator',
    'LOAN/EMI Calculator ',
    'PPF Calculator',
    'SIP with Inflaction',
  ];
  List pages = const [
    FDCalculator(),
    LoanCalculator(),
    PPFCalculator(),
    RDCalculator(),
    SIPCalculator(),
  ];
  BuildGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // aaya container hatu je  kadhi nakhyu che

          GridView.builder(
            shrinkWrap: true,
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 11,
              mainAxisSpacing: 1,
            ),
            itemBuilder: ((context, index) {
              return InkWell(
                onTap: () {
                  Get.to(
                    pages[index],
                  );
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: colors[index],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 100,
                      width: 220,
                      //margin: EdgeInsets.all(10.0),
                      child: Image.asset(
                        images[index],
                        height: 20,
                        width: 20,
                        color: AppColors.SecondaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      text[index],
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

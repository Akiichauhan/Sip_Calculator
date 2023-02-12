import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sip_calculator/app/ALI_APP/check.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/multi_calculator/fd_calculator.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/multi_calculator/loan_calculator.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/multi_calculator/ppf_calculator.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/multi_calculator/rd_calculator.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/multi_calculator/sip_calculator.dart';
import 'package:sip_calculator/app/const/colors.dart';
import 'package:sip_calculator/app/drawer/all_pages/more/credit.dart';
import 'package:sip_calculator/app/drawer/all_pages/more/terms_of_use.dart';
import 'app/screens/dashbourd/dashbourd.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.whiteColor,
      ),
      color: AppColors.whiteColor,
      debugShowCheckedModeBanner: false,
      home: const Dashbourd(),
    );
  }
}

//git
// https://www.youtube.com/watch?v=vRxfnHtCxEo
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sip_calculator/app/ALI_APP/mytab.dart';
import 'package:sip_calculator/app/const/colors.dart';

import 'app/screens/dashbourd/dashbourd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      color: AppColors.whiteColor,
      debugShowCheckedModeBanner: false,
      home: Dashbourd(),
      //  home: MyTab(),
    );
  }
}

//git
// https://www.youtube.com/watch?v=vRxfnHtCxEo
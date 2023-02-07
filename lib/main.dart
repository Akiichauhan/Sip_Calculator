import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sip_calculator/app/const/colors.dart';
import 'package:sip_calculator/app/drawer/all_pages/pages/feature_request.dart';

import 'app/screens/dashbourd/dashbourd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        //  primarySwatch: AppColors.whiteColor,
        primaryColor: AppColors.whiteColor,
      ),

      color: AppColors.whiteColor,
      debugShowCheckedModeBanner: false,
      //home: FeatureRequest(),
      //  home: MyTab(),
      home: const Dashbourd(),
    );
  }
}

//git
// https://www.youtube.com/watch?v=vRxfnHtCxEo
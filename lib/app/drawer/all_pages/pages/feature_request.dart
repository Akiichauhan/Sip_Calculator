import 'package:flutter/material.dart';
import 'package:sip_calculator/app/const/colors.dart';

class FeatureRequest extends StatefulWidget {
  const FeatureRequest({super.key});

  @override
  State<FeatureRequest> createState() => _FeatureRequestState();
}

class _FeatureRequestState extends State<FeatureRequest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cardIconFirstColor,
    );
  }
}

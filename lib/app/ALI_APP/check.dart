import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart ';

class MYCheck extends StatefulWidget {
  const MYCheck({super.key});

  @override
  State<MYCheck> createState() => _MYCheckState();
}

class _MYCheckState extends State<MYCheck> {
  final TextEditingController _controller = TextEditingController();
  double _monthlyInvestment = 500;
  NumberFormat decimalFormat = NumberFormat.decimalPattern('en_us');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                fillColor: Color(0xffe5faf5),
                filled: true,
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SfSlider(
                min: 500,
                max: 100000,
                value: _monthlyInvestment,
                onChanged: (dynamic value) {
                  setState(() {
                    _monthlyInvestment = value;
                    _controller.text =
                        '\$${decimalFormat.format(_monthlyInvestment.floor())}';
                  });
                }),
            SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 30,
                  useRangeColorForAxis: true,
                  startAngle: 270,
                  endAngle: 270,
                  showLabels: false,
                  showTicks: false,
                  axisLineStyle: const AxisLineStyle(
                      thicknessUnit: GaugeSizeUnit.factor,
                      thickness: 0.35,
                      color: Color(0xFF98a4ff)),
                  ranges: <GaugeRange>[
                    GaugeRange(
                        startValue: 0,
                        endValue: 17,
                        color: const Color(0xFF98a4ff),
                        sizeUnit: GaugeSizeUnit.factor,
                        startWidth: 0.35,
                        endWidth: 0.35),
                    GaugeRange(
                        // This will update the gauge based on returns.
                        startValue: 1,
                        endValue: 30,
                        sizeUnit: GaugeSizeUnit.factor,
                        color: const Color(0xFF5367ff),
                        startWidth: 0.35,
                        endWidth: 0.35),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

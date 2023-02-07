import 'package:flutter/material.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/notes/other_notes.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/other_calculators.dart';
import 'package:sip_calculator/app/screens/dashbourd/dashbourd.dart';

class ChoiceChips extends StatefulWidget {
  const ChoiceChips({super.key});
  @override
  State<ChoiceChips> createState() => _ChoiceChipsState();
}

class _ChoiceChipsState extends State<ChoiceChips> {
  @override
  List<String> chipList = [
    "Recycled",
    "Vegetarian",
    "Skilled",
    "Energetic",
    "Friendly",
    "Luxurious"
  ];

  List title = [
    'ThirdScreen',
    'SecondScreen',
    'ImagePickerScreen',
    'HomeScreen',
    'FourthScreen',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer("Choose amenities"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  child: Wrap(
                spacing: 5.0,
                runSpacing: 3.0,
                children: const <Widget>[
                  filterChipWidget(chipName: 'Elevator'),
                  filterChipWidget(chipName: 'Washer/Dryer'),
                  filterChipWidget(chipName: 'Fireplace'),
                  filterChipWidget(chipName: 'Dogs ok'),
                  filterChipWidget(chipName: 'Cats ok'),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  const filterChipWidget({required this.chipName});

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;
  List Navigate = [
    Dashbourd(),
    OtherCalculators(),
    OtherNotes(),
    Dashbourd(),
    OtherCalculators()
  ];
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: const TextStyle(
          color: Color(0xff6200ee),
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: const Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
        // Get.to(Navigate[2]);
      },
      selectedColor: const Color(0xffeadffd),
    );
  }
}

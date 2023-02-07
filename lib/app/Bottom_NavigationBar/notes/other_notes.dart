import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sip_calculator/app/appbar/other_appbar.dart';

import 'package:sip_calculator/app/const/colors.dart';
import 'package:sip_calculator/app/widgets/mystring.dart';

class OtherNotes extends StatefulWidget {
  const OtherNotes({super.key});

  @override
  State<OtherNotes> createState() => _OtherNotesState();
}

class _OtherNotesState extends State<OtherNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: OtherAppbar(
        leading: const Icon(
          Icons.arrow_back,
        ),
        centerTitle: true,
        title: "Other Notes",
        style: GoogleFonts.roboto(
          color: AppColors.blackColor,
        ),
      ),
      */
      body: Container(
        color: AppColors.notesTextColor,
        child: Center(
          child: MyString(
            myText: "No Notes Saved",
            style: GoogleFonts.roboto(
              color: AppColors.whiteColor,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}

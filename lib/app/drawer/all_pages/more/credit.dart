import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../appbar/other_appbar.dart';
import '../../../const/colors.dart';
import '../../../widgets/mystring.dart';

class Credit extends StatefulWidget {
  const Credit({super.key});

  @override
  State<Credit> createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherAppbar(
        centerTitle: true,
        title: "SIP Calculator",
        mainColor: AppColors.drawersubmenuappbarColor,
        style: GoogleFonts.roboto(
          fontSize: 18.0,
        ),
        leading: Icon(
          Icons.style,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _myAns(),
                const SizedBox(
                  height: 20.0,
                ),
                _mySAns(),
                SizedBox(
                  height: 10.0,
                ),
                _myTAns(),
                const SizedBox(
                  height: 10.0,
                ),
                _myFAns(),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _myAns() {
    return Row(
      children: [
        MyString(
          myText: "1",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        MyString(
          myText: "Animations by https://lottiefiles.com/",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }

  Widget _mySAns() {
    return Row(
      children: [
        MyString(
          myText: "2",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        MyString(
          myText: "Icons made by Freepik from \nwww.flaticon.com",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }

  Widget _myTAns() {
    return Row(
      children: [
        MyString(
          myText: "3",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        MyString(
          myText:
              "Background vector created by \n blossomstar – www.freepik.com",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }

  Widget _myFAns() {
    return Row(
      children: [
        MyString(
          myText: "4",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        MyString(
          myText: "Background vector created by \n pikisuperstar  – www",
          style: GoogleFonts.roboto(
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}


//Icons made by Freepik from www.flaticon.com
//Background vector created by blossomstar – www.freepik.com
//Background vector created by pikisuperstar – www.",

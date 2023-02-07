import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/notes/other_notes.dart';
import 'package:sip_calculator/app/Bottom_NavigationBar/other_calculator/other_calculators.dart';
import 'package:sip_calculator/app/appbar/custom_appbar.dart';
import 'package:sip_calculator/app/drawer/mydrawer.dart';
import 'package:sip_calculator/app/widgets/mystring.dart';

import '../../const/colors.dart';
import '../../widgets/Icon_text_input.dart';
import '../../widgets/custom_btn.dart';

class Dashbourd extends StatefulWidget {
  const Dashbourd({super.key});

  @override
  State<Dashbourd> createState() => _DashbourdState();
}

///https://www.youtube.com/watch?v=eLs58jHZLdY

class _DashbourdState extends State<Dashbourd>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Calculator",
        style: GoogleFonts.roboto(
          color: AppColors.blackColor,
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.card_giftcard,
              color: AppColors.appbarGiftcolor,
            ),
          ),
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
      drawer: const MyDrawer(),
      body: Center(
        child: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            TopTabbar(),
            OtherCalculators(),
            OtherNotes(),
          ],
        ),
      ),
      //https://www.youtube.com/watch?v=YJEMMhA9udQ

      bottomNavigationBar: TabBar(
        controller: _tabController,
        unselectedLabelColor: AppColors.blackColor,
        //labelColor: AppColors.PrimaryColor,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 0.0),
        ),
        labelColor: AppColors.tabbarBorderColor,
        tabs: const <Widget>[
          Tab(
            icon: Icon(
              Icons.home,
            ),
            text: "SIP Calculator",
          ),
          Tab(
            icon: Icon(
              Icons.calculate,
            ),
            text: "Other Calculator",
          ),
          Tab(
            icon: Icon(
              Icons.stars,
            ),
            text: "Saved Result",
          ),
        ],
      ),
    );
  }
}

class TopTabbar extends StatefulWidget {
  const TopTabbar({super.key});

  @override
  State<TopTabbar> createState() => _TopTabbarState();
}

class _TopTabbarState extends State<TopTabbar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: TabBar(
          controller: _tabController,
          indicatorWeight: 6.0,
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(width: 0.0),
          ),
          labelColor: AppColors.tabBarabColor,
          tabs: <Widget>[
            Tab(
              text: "sip".toUpperCase(),
            ),
            Tab(
              text: "one-time ".toUpperCase(),
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        _mySip(),
        _myMutureFunds(),
      ]),
    );
  }

  Widget _mySip() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        color: AppColors.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.cookie_outlined,
                  color: AppColors.tabbarBorderColor,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                MyString(
                  myText: "Monthly SIP Amount",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    color: AppColors.dashbourdSipColor,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: MyString(
                    myText: "What is SIP?",
                    style: GoogleFonts.roboto(
                      color: AppColors.tabbarBorderColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            IconInputText(
              obscureText: false,
              labelText: "labelText",
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.tabBarabColor,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.tabbarBorderColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            MyString(
              myText: "Five Thousend",
              style: GoogleFonts.roboto(
                color: AppColors.languagebottomTextColor,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const Icon(
                  Icons.percent,
                  color: AppColors.tabbarBorderColor,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                MyString(
                  myText: "Expected Gain % (Per Year)",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            IconInputText(
              obscureText: false,
              labelText: "labelText",
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.tabbarBorderColor,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.tabBarabColor,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: AppColors.tabBarabColor,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                MyString(
                  myText: "Sip Tenure",
                  style: GoogleFonts.roboto(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                MyString(
                  myText: "Years",
                  style: GoogleFonts.roboto(
                    color: AppColors.blackColor,
                    fontSize: 16.0,
                  ),
                ),
                MyString(
                  myText: "Years",
                  style: GoogleFonts.roboto(
                    color: AppColors.blackColor,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  width: 6.0,
                ),
                MyString(
                  myText: "Steper",
                  style: GoogleFonts.roboto(
                    color: AppColors.appbarTitileColor,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                MyString(
                  myText: "Adjust for\n Inflation?",
                  style: GoogleFonts.roboto(
                    color: AppColors.tabBarabColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  width: 70.0,
                ),
                UIButton(
                  width: 90.0,
                  height: 36.0,
                  color: AppColors.tabBarabColor,
                  labelText: "Calculate",
                  style: GoogleFonts.roboto(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _myMutureFunds() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        color: AppColors.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.cookie_outlined,
                  color: AppColors.tabbarBorderColor,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                MyString(
                  myText: "Investment Amount",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: AppColors.dashbourdSipColor,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: MyString(
                    myText: "What is Muture Funds?",
                    style: GoogleFonts.roboto(
                      color: AppColors.tabBarabColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            IconInputText(
              obscureText: false,
              labelText: "labelText",
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.tabBarabColor,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.tabbarBorderColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            MyString(
              myText: "Five Thousend",
              style: GoogleFonts.roboto(
                color: AppColors.languagebottomTextColor,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const Icon(
                  Icons.percent,
                  color: AppColors.tabbarBorderColor,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                MyString(
                  myText: "Expected Gain % (Per Year)",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            IconInputText(
              obscureText: false,
              labelText: "labelText",
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.tabbarBorderColor,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.tabBarabColor,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: AppColors.tabBarabColor,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                MyString(
                  myText: "Tenure",
                  style: GoogleFonts.roboto(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                MyString(
                  myText: "Years",
                  style: GoogleFonts.roboto(
                    color: AppColors.blackColor,
                    fontSize: 16.0,
                  ),
                ),
                MyString(
                  myText: "Years",
                  style: GoogleFonts.roboto(
                    color: AppColors.blackColor,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  width: 6.0,
                ),
                MyString(
                  myText: "Steper",
                  style: GoogleFonts.roboto(
                    color: AppColors.appbarTitileColor,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                MyString(
                  myText: "See Saved\n Result?",
                  style: GoogleFonts.roboto(
                    color: AppColors.tabBarabColor,
                  ),
                ),
                const SizedBox(
                  width: 70.0,
                ),
                UIButton(
                  width: 90.0,
                  height: 36.0,
                  color: AppColors.tabBarabColor,
                  labelText: "Calculate",
                  style: GoogleFonts.roboto(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

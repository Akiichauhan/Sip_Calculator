// ignore_for_file: non_constant_identifier_names

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

  int _selectedIndex = 0;

  final List<String> myBottomAppTitle = const [
    "SIP Calculator",
    "Other Calculator",
    "Saved Calculator",
  ];

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
        title: myBottomAppTitle[_selectedIndex],
        style: GoogleFonts.roboto(
          color: AppColors.blackColor,
          fontSize: 18.0,
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
          children: const [
            TopTabbar(),
            OtherCalculators(),
            OtherNotes(),
          ],
        ),
      ),
      //https://www.youtube.com/watch?v=YJEMMhA9udQ

      bottomNavigationBar: TabBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
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
//https://www.youtube.com/watch?v=rQp2CzwY62s&list=PL4HwdDNslHMPp7slhmWcMJbDpYld6t2xe&index=3

  final TextEditingController _principal = TextEditingController();
  final TextEditingController _term = TextEditingController();
  final TextEditingController _percentage = TextEditingController();
  String result = "";
  String _finalresult = "";
  final _formkey = GlobalKey<FormState>();

  TabController? _tabController;
  int _tabSelectedIndex = 0;

  double values = 50;

  final List<String> myTabAppTitle = const [
    "SIP Calculator",
    "Profit Calculator",
  ];

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
          onTap: (value) {
            setState(() {
              _tabSelectedIndex = value;
            });
          },
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
      child: Form(
        key: _formkey,
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
                controller: _principal,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Plz Enter Money";
                  }
                },
                keyboardType: TextInputType.number,
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
                controller: _percentage,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Plz Enter Percentage";
                  }
                },
                keyboardType: TextInputType.number,
                obscureText: false,
                labelText: "Please Enter Percentage",
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
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(color: AppColors.blackColor, width: 1.0),
                      ),
                    ),
                    width: 50.0,
                    child: IconInputText(
                      counterText: "",
                      controller: _term,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Plz Enter Year";
                        }
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 2,
                      obscureText: false,
                      labelText: "Please Enter year",
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
                  Slider(
                    // https://www.youtube.com/watch?v=vuw818gAlF8
                    value: values,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    activeColor: AppColors.tabbarBorderColor,

                    inactiveColor: AppColors.tabbarBorderColor,
                    onChanged: ((value) => setState(
                          () => values = value,
                        )),
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (_formkey.currentState!.validate()) {
                          _finalresult = calculateData();
                        }
                      });
                    },
                    child: UIButton(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.06,
                      color: AppColors.tabBarabColor,
                      labelText: "Calculate",
                      style: GoogleFonts.roboto(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyString(
                  myText: _finalresult,
                ),
              ),
            ],
          ),
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
                //  IconInputText(labelText: "labelText"),
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
                Slider(
                  // https://www.youtube.com/watch?v=vuw818gAlF8
                  value: values,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  activeColor: AppColors.tabbarBorderColor,
                  inactiveColor: AppColors.tabbarBorderColor,
                  onChanged: ((value) => setState(
                        () => values = value,
                      )),
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
                InkWell(
                  onTap: () {},
                  child: UIButton(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.06,
                    color: AppColors.tabBarabColor,
                    labelText: "Calculate",
                    style: GoogleFonts.roboto(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  String calculateData() {
    double mymoney = double.parse(_principal.text);

    double mypercentage = double.parse(_percentage.text);
    double myyear = double.parse(_term.text);

    double FinalAmount = mymoney + (mymoney * myyear * mypercentage) / 100;

    String R =
        // "Afert $_term years your Investment will be worth $FinalAmount  ";
        "$FinalAmount";
    return R;
  }
}

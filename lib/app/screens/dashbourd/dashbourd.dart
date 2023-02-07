import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sip_calculator/app/appbar/custom_appbar.dart';
import 'package:sip_calculator/app/drawer/mydrawer.dart';

import '../../const/colors.dart';

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
            const TopTabbar(),
            Center(
              child: Text(
                "Home",
                style: GoogleFonts.roboto(),
              ),
            ),
            Center(
              child: Text(
                "Other Calculator",
                style: GoogleFonts.roboto(),
              ),
            ),
            Center(
              child: Text(
                "Notes",
                style: GoogleFonts.roboto(),
              ),
            ),
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
        labelColor: AppColors.PrimaryColor,
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
          unselectedLabelColor: AppColors.blackColor,
          indicatorWeight: 6.0,
          //labelColor: AppColors.PrimaryColor,
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(width: 0.0),
          ),
          labelColor: AppColors.PrimaryColor,

          tabs: const <Widget>[
            Tab(
              text: "SIP1",
            ),
            Tab(
              text: "SIP2",
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        Text("This is SIP1"),
        Text("This is SIP2"),
      ]),
    );
  }
}

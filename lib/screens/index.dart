import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:lyca_mobile/screens/aboutus.dart';
import 'package:lyca_mobile/screens/help_and_support.dart';
import 'package:lyca_mobile/screens/scan_to_download.dart';
import 'package:lyca_mobile/screens/terms_&_conditions.dart';
import 'package:lyca_mobile/widgets/drawer_tile.dart';

import 'home.dart';
import 'settings.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final ZoomDrawerController z = ZoomDrawerController();

  int counter = 0;
  bool draweropen = false;
  // final GlobalKey<SliderDrawerState> drawerKey = GlobalKey<SliderDrawerState>();
  void openCloseDrawer(bool x) {
    // ignore: unrelated_type_equality_checks
    if (x == true) {
      z.close!();
    } else {
      z.open!();
    }
  }

  closeOpenDrawer() {
    if (z.isOpen!() == true) {
      z.close!();
    } else {
      z.open!();
    }
  }

  var titles = [
    'Home',
    'Transactions',
    'Settings',
    'Scan to download',
    'Help & Support',
    'Terms & Conditions',
    'About us',
    'Rate us',
  ];

  List<Widget> tabs = [
    Home(),
    Container(),
    Settings(),
    ScanToDownload(),
    const HelpAndSupport(),
    TermsAndConditions(),
    const AboutUs(),
    Container(),
  ];

  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: ZoomDrawer(
        controller: z,
        borderRadius: 24,
        style: DrawerStyle.defaultStyle,
        showShadow: true,
        openCurve: Curves.fastOutSlowIn,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        duration: const Duration(milliseconds: 500),
        angle: 0.0,
        menuScreenTapClose: true,
        mainScreenTapClose: true,
        menuScreen: buildDrawer(),
        mainScreen: buildBody(),
      ),
    );
  }

  Widget buildDrawer() {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 17,
            horizontal: MediaQuery.of(context).size.width / 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.greenAccent[200],
                  ),
                  accountName: const Text(
                    "Bruce",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                  accountEmail: const Text(
                    "bruce@gmail.com",
                    style: TextStyle(color: Colors.black, fontSize: 11),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
              DrawerListTile(
                title: "Home",
                svgSrc: Icons.home_filled,
                press: () {
                  z.close!();
                  setState(() {
                    currentTabIndex = 0;
                    draweropen = true;
                    openCloseDrawer(draweropen);
                  });

                  // openCloseDrawer();
                },
              ),
              DrawerListTile(
                title: "Transactions",
                svgSrc: Icons.transform_rounded,
                press: () {
                  setState(() {
                    currentTabIndex = 1;
                    draweropen = true;
                    openCloseDrawer(draweropen);
                  });
                  // openCloseDrawer();
                },
              ),
              DrawerListTile(
                title: "Settings",
                svgSrc: Icons.settings,
                press: () {
                  setState(() {
                    currentTabIndex = 2;
                    draweropen = true;
                    openCloseDrawer(draweropen);
                  });
                  // openCloseDrawer();
                },
              ),
              DrawerListTile(
                title: "Scan to download",
                svgSrc: Icons.download,
                press: () {
                  setState(() {
                    currentTabIndex = 3;
                    draweropen = true;
                    openCloseDrawer(draweropen);
                  });
                  // openCloseDrawer();
                },
              ),
              DrawerListTile(
                title: "Help & Support",
                svgSrc: Icons.feedback_outlined,
                press: () {
                  setState(() {
                    currentTabIndex = 4;
                    draweropen = true;
                    openCloseDrawer(draweropen);
                  });
                  // openCloseDrawer();
                },
              ),
              DrawerListTile(
                title: "Terms & Conditions",
                svgSrc: Icons.file_present_rounded,
                press: () {
                  setState(() {
                    currentTabIndex = 5;
                    draweropen = true;
                    openCloseDrawer(draweropen);
                  });
                  // openCloseDrawer();
                },
              ),
              DrawerListTile(
                title: "About us",
                svgSrc: Icons.people,
                press: () {
                  setState(() {
                    currentTabIndex = 6;
                    draweropen = true;
                    openCloseDrawer(draweropen);
                  });
                  // openCloseDrawer();
                },
              ),
              DrawerListTile(
                title: "Rate us",
                svgSrc: Icons.rate_review,
                press: () {
                  setState(() {
                    currentTabIndex = 7;
                    draweropen = true;
                    openCloseDrawer(draweropen);
                  });
                  // openCloseDrawer();
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: DrawerListTile(
                  title: "Log Out",
                  svgSrc: Icons.outbond,
                  press: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return Scaffold(
      // build your appBar
      appBar: CupertinoNavigationBar(
        leading: CupertinoButton(
            padding: const EdgeInsets.all(5),
            onPressed: () {
              closeOpenDrawer();
            },
            child: const Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            )),
        backgroundColor: Colors.blue,
        middle: Text(
          titles[currentTabIndex],
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),

      // build your screen body
      body: tabs[currentTabIndex],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:onfinance/screens/explore_page.dart';
import 'package:onfinance/screens/home_page.dart';
import 'package:onfinance/screens/alerts_page.dart';
import 'package:onfinance/screens/portfolio_page.dart';
import 'package:onfinance/screens/profile_page.dart';
import 'package:onfinance/utils/constants.dart';

import '../gen/assets.gen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  final List<Widget> _widgetOptions = const <Widget>[
    // pages
    HomePage(),
    ExplorePage(),
    AlertsPage(),
    PortfolioPage(),
    ProfilePage()
  ];

  @override
  void initState() {
    super.initState();
    // Run code required to handle interacted messages in an async function
    // as initState() must not be async
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: white,
      body: _widgetOptions.elementAt(_index),
      bottomNavigationBar: SizedBox(
        // height: 70,
        //---
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          backgroundColor: darkBlueColor,
          selectedItemColor: purpleColor,
          unselectedItemColor: lightGreyColor,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            height: 1.6,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            height: 1.6,
          ),
          items: [
            BottomNavigationBarItem(
              icon: _index == 0
                  ? Image.asset(
                      Assets.icons.bottomnavbar.homeActiveIcon.path,
                      height: 24,
                    )
                  : Image.asset(
                      Assets.icons.bottomnavbar.homeInactiveIcon.path,
                      height: 24,
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _index == 1
                  ? Image.asset(
                      Assets.icons.bottomnavbar.exploreActiveIcon.path,
                      height: 24,
                    )
                  : Image.asset(
                      Assets.icons.bottomnavbar.exploreInactiveIcon.path,
                      height: 24,
                    ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: _index == 2
                  ? Image.asset(
                      Assets.icons.bottomnavbar.alertsActiveIcon.path,
                      height: 24,
                    )
                  : Image.asset(
                      Assets.icons.bottomnavbar.alertsInactiveIcon.path,
                      height: 24,
                    ),
              label: 'Alerts',
            ),
            BottomNavigationBarItem(
              icon: _index == 3
                  ? Image.asset(
                      Assets.icons.bottomnavbar.chartActiveIcon.path,
                      height: 24,
                    )
                  : Image.asset(
                      Assets.icons.bottomnavbar.chartInactiveIcon.path,
                      height: 24,
                    ),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  Assets.images.person.path,
                  height: 30,
                ),
              ),
              label: '.',
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: FloatingActionButton(
          mini: true,
          onPressed: () {},
          backgroundColor: purpleColor,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _index = 4;
              });
            },
            child: Image.asset(
              Assets.images.person.path,
              fit: BoxFit.fill,
              // height: 30,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }
}

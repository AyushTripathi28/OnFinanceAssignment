import 'package:flutter/material.dart';
import 'package:onfinance/screens/explore_page.dart';
import 'package:onfinance/screens/home_page.dart';
import 'package:onfinance/screens/alerts_page.dart';
import 'package:onfinance/screens/portfolio_page.dart';
import 'package:onfinance/screens/profile_page.dart';
import 'package:onfinance/utils/constants.dart';
import '../gen/assets.gen.dart';
import '../widgets/bottom_navitem_widget.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_index),
      bottomNavigationBar: SizedBox(
        height: 70,
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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          items: [
            BottomNavigationBarItem(
              icon: BottomNavItemWidget(
                widgetIndex: 0,
                index: _index,
                label: "Home",
                selectedIcon: Assets.icons.bottomnavbar.homeActiveIcon.path,
                unelectedIcon: Assets.icons.bottomnavbar.homeInactiveIcon.path,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: BottomNavItemWidget(
                widgetIndex: 1,
                index: _index,
                label: "Explore",
                selectedIcon: Assets.icons.bottomnavbar.exploreActiveIcon.path,
                unelectedIcon:
                    Assets.icons.bottomnavbar.exploreInactiveIcon.path,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: BottomNavItemWidget(
                widgetIndex: 2,
                index: _index,
                label: "Alerts",
                selectedIcon: Assets.icons.bottomnavbar.alertsActiveIcon.path,
                unelectedIcon:
                    Assets.icons.bottomnavbar.alertsInactiveIcon.path,
              ),
              label: 'Alerts',
            ),
            BottomNavigationBarItem(
              icon: BottomNavItemWidget(
                widgetIndex: 3,
                index: _index,
                label: "Portfolio",
                selectedIcon: Assets.icons.bottomnavbar.chartActiveIcon.path,
                unelectedIcon: Assets.icons.bottomnavbar.chartInactiveIcon.path,
              ),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Image.asset(
                  Assets.images.person.path,
                  height: 38,
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

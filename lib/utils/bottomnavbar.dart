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
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_index),
      bottomNavigationBar: SizedBox(
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
          // selectedLabelStyle: const TextStyle(
          //   fontWeight: FontWeight.bold,
          //   fontSize: 12,
          //   height: 1.6,
          // ),
          // unselectedLabelStyle: const TextStyle(
          //   fontWeight: FontWeight.bold,
          //   fontSize: 12,
          //   height: 1.6,
          // ),
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
              //  _index == 1
              //     ? Image.asset(
              //         Assets.icons.bottomnavbar.exploreActiveIcon.path,
              //         height: 24,
              //       )
              //     : Image.asset(
              //         Assets.icons.bottomnavbar.exploreInactiveIcon.path,
              //         height: 24,
              //       ),
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

              // _index == 2
              //     ? Image.asset(
              //         Assets.icons.bottomnavbar.alertsActiveIcon.path,
              //         height: 24,
              //       )
              //     : Image.asset(
              //         Assets.icons.bottomnavbar.alertsInactiveIcon.path,
              //         height: 24,
              //       ),
              label: 'Alerts',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    _index == 3
                        ? Assets.icons.bottomnavbar.chartActiveIcon.path
                        : Assets.icons.bottomnavbar.chartInactiveIcon.path,
                    height: 24,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Portfolio",
                    style: TextStyle(
                        color: _index == 3 ? purpleColor : lightGreyColor),
                  )
                ],
              ),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.images.person.path,
                height: 38,
              ),
              label: '',
            ),
          ],
        ),
      ),
      // floatingActionButton: Center(
      //   child: FloatingActionButton(
      //     mini: true,
      //     onPressed: () {},
      //     backgroundColor: purpleColor,
      //     child: GestureDetector(
      //       onTap: () {
      //         setState(() {
      //           _index = 4;
      //         });
      //       },
      //       child: Image.asset(
      //         Assets.images.person.path,
      //         fit: BoxFit.fill,
      //         // height: 30,
      //       ),
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }
}

class BottomNavItemWidget extends StatefulWidget {
  const BottomNavItemWidget(
      {super.key,
      required this.index,
      required this.label,
      required this.selectedIcon,
      required this.unelectedIcon,
      required this.widgetIndex});
  final int index;
  final int widgetIndex;
  final String label;
  final String selectedIcon;
  final String unelectedIcon;

  @override
  State<BottomNavItemWidget> createState() => _BottomNavItemWidgetState();
}

class _BottomNavItemWidgetState extends State<BottomNavItemWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          widget.index == widget.widgetIndex
              ? widget.selectedIcon
              : widget.unelectedIcon,
          height: size.height * 0.03,
        ),
        SizedBox(
          height: size.height * 0.003,
        ),
        Text(
          widget.label,
          style: TextStyle(
              color: widget.index == widget.widgetIndex
                  ? purpleColor
                  : lightGreyColor),
        )
      ],
    );
  }
}

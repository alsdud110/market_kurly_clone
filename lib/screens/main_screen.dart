import 'package:flutter/material.dart';
import 'package:flutter_kurly/constants.dart';
import 'package:flutter_kurly/models/nav_items.dart';
import 'package:flutter_kurly/screens/category/category_screen.dart';
import 'package:flutter_kurly/screens/home/home_screen.dart';
import 'package:flutter_kurly/screens/my_kurly/my_kruly_screen.dart';
import 'package:flutter_kurly/screens/recommend/recommend_screen.dart';
import 'package:flutter_kurly/screens/search/search_screen.dart';
import 'package:flutter_svg/svg.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  static String routeName = "/main_screens";

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          HomeScreen(),
          RecommendScreen(),
          CategoryScreen(),
          SearchScreen(),
          MyKurlyScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: List.generate(
          navItems.length,
          (index) => _buildBottomNavigationBarItem(
              icon: navItems[index].icon,
              label: navItems[index].label,
              isActive: navItems[index].id == selectedIndex ? true : false),
        ),
      ),
    );
  }

  _buildBottomNavigationBarItem(
      {String? icon,
      String? label,
      bool isActive = false,
      GestureTapCallback? press}) {
    return BottomNavigationBarItem(
      icon: SizedBox(
        width: 38,
        height: 38,
        child: IconButton(
          onPressed: press,
          icon: SvgPicture.asset(
            icon ?? "assets/icons/star.svg",
            color: isActive ? kPrimaryColor : Colors.black,
          ),
        ),
      ),
      label: label,
    );
  }
}

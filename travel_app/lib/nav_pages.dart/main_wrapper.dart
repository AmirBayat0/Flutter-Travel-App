import 'package:flutter/material.dart';

import '../nav_pages.dart/bar.dart';
import '../nav_pages.dart/profile.dart';
import '../nav_pages.dart/search.dart';
import '../pages/home_page.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  late final PageController pageController;
  int currentIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    Bar(),
    Search(),
    Profile(),
  ];

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          onTap: onTap,
          elevation: 0,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.deepPurpleAccent,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.apps_rounded,
              ),
            ),
            BottomNavigationBarItem(
              label: "Bar",
              icon: Icon(
                Icons.bar_chart_sharp,
              ),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: "My Profile",
              icon: Icon(
                Icons.person,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

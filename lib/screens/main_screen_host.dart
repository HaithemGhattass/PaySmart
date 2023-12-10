import 'package:flutter/material.dart';
import 'package:paysmart/screens/home_profile_tab.dart';
import 'package:paysmart/screens/home_screen_tab.dart';
import 'package:paysmart/screens/paying_screen.dart';
import 'package:paysmart/screens/wallet_screen.dart';
import 'package:paysmart/utils/constants.dart';
import 'package:paysmart/widgets/bar_chart.dart';

class MainScreenHost extends StatefulWidget {
  const MainScreenHost({super.key});

  @override
  State<MainScreenHost> createState() => _MainScreenHostState();
}

class _MainScreenHostState extends State<MainScreenHost> {
  var currentIndex = 0;

  Widget buildTabContent(int index) {
    switch (index) {
      case 0:
        return const HomeScreenTab();
      case 1:
        return const MyBarGraph();

      case 2:
        return const PayingScreen();
      case 3:
        return const CardScreen();
      case 4:
        return const HomeProfileTab();
      default:
        return const HomeScreenTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        tooltip: "add something",
        backgroundColor: primaryDark,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: buildTabContent(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: secondaryDark,
        unselectedItemColor: fontLight,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/home-1.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/chart-vertical.png"),
              label: "Stat"),
          const BottomNavigationBarItem(
            icon: SizedBox.shrink(), // Hide the icon
            label: "", // Empty label
          ),

          // ADD a poping up rounded plus button
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/wallet.png"), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/user-1.png"), label: "Profile"),
        ],
      ),
    );
  }
}

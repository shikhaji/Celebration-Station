import 'package:celebration_station/bookingList.dart';
import 'package:celebration_station/contactUs.dart';
import 'package:celebration_station/eventCalender.dart';
import 'package:celebration_station/home.dart';
import 'package:celebration_station/newBooking.dart';
import 'package:celebration_station/ourServices-1.dart';
import 'package:celebration_station/ourSevice.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var controller;
  var selectedIndex=0;
  List pages = [
    OurService(),
    NewBooking(),
    EventCalendarScreen(),
    BookingList(),
  ];
  @override
  Widget build(BuildContext context) {
    var controller;
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.grey.shade100,
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
          controller.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        iconSize: 30,
        activeColor: Colors.lime.shade800,
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.add,
            title: 'Add',
          ),
          BarItem(
            icon: Icons.search,
            title: 'Search',
          ),
          BarItem(
            icon: Icons.shopping_cart,
            title: 'Cart',
          ),
        ],
      ),
    );
  }
}

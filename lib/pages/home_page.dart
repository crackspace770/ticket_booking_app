import 'package:flutter/material.dart';
import 'package:ticket_booking_app/pages/booking_page.dart';
import 'package:ticket_booking_app/pages/index_page.dart';
import 'package:ticket_booking_app/pages/search_page.dart';
import 'package:ticket_booking_app/pages/setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _bottomNavIndex = 0;

  final List<Widget> _listWidget = [
    const IndexPage(),
    const SearchPage(),
    const BookingPage(),
    const SettingPage()
  ];

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon( Icons.home),
      label: "Home",
    ),

    const BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: "Search"
    ),

    const BottomNavigationBarItem(
        icon: Icon(Icons.book_outlined),
        label: "Booking"
    ),

    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        currentIndex: _bottomNavIndex,
        items: _bottomNavBarItems,
        onTap: (selected) {
          setState(() {
            _bottomNavIndex = selected;
          });
        },
      ),
    );
  }
}

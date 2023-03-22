import 'package:busbooking/screens/book_ticket.dart';
import 'package:busbooking/screens/bus_list.dart';
import 'package:busbooking/screens/home.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _selectedIndex = 2;
  static final List<Widget> _widgetOptions = [
    const BookTicket(),
    const Home(),
    const BusList(),
    const Text("Profile"),
  ];

  void _functionSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: ProjectTheme.appRed,
      // ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _functionSelect,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Book"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Tickets"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
              activeIcon:
                  Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}

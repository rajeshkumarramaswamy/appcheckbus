import 'package:busbooking/screens/book_hotel.dart';
import 'package:busbooking/screens/book_ticket.dart';
import 'package:busbooking/screens/bus_list.dart';
import 'package:busbooking/screens/profile.dart';
import 'package:busbooking/utils/project_theme.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    const BookTicket(),
    const BookHotel(),
    const BusList(),
    const Profile(),
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
        elevation: 20,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: ProjectTheme.appRed,
        unselectedItemColor: ProjectTheme.appGrey,
        currentIndex: _selectedIndex,
        onTap: _functionSelect,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Bus"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_bed_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_bed_filled),
              label: "Hotels"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "History"),
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
